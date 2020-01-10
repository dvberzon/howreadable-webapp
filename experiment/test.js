const path = require('path');
const fs = require('fs');
const globule = require('globule');
const vm = require('vm');
const chalk = require('chalk');

const UTF8 = 'utf8';
const MATCHES_VALID_FILE_NAME = /^([a-z0-9]+)_[a-z0-9_]+\.js$/i;

const log = message => {
  console.error(message);
};

const logError = message => {
  console.error(chalk.red(message));
};

const removeDuplicates = (filePath, index, context) =>
  context.indexOf(filePath) === index;

const getCorrectResult = (directory, exerciseID) => {
  const correctResultPath = path.resolve(directory, `${exerciseID}.json`);

  if (!fs.existsSync(correctResultPath)) {
    throw new Error(
      `No result defined for exercise "${exerciseID}" in "${directory}"`
    );
  }

  return JSON.parse(fs.readFileSync(correctResultPath, UTF8));
};

const getExerciseResult = filePath => {
  const content = fs.readFileSync(filePath, UTF8);
  const sandbox = {};
  vm.createContext(sandbox);
  vm.runInContext(content, sandbox);
  return sandbox.result;
};

const errors = [];

const filePaths = globule.find([
  '**/*.js',
  '!node_modules/**',
  '!v1/**',
  '!test.js'
]);

const testCaseDirectories = filePaths
  .map(filePath => path.dirname(filePath))
  .filter(removeDuplicates);

const fileGroups = filePaths.reduce((memo, filePath) => {
  const directory = path.dirname(filePath);
  const index = testCaseDirectories.indexOf(directory);

  return memo.map((testCase, testCaseIndex) =>
    testCaseIndex !== index
      ? testCase
      : {
          ...testCase,
          exercises: [...testCase.exercises, filePath]
        }
  );
}, testCaseDirectories.map(directory => ({ directory, exercises: [] })));

let totalExercises = 0;

fileGroups.forEach(({ directory, exercises }) => {
  log(
    chalk.yellow(
      `Running exercises in ${directory} - ${exercises.length} snippets`
    )
  );

  exercises.forEach(filePath => {
    totalExercises += 1;

    const fileName = path.basename(filePath);
    const match = MATCHES_VALID_FILE_NAME.exec(fileName);

    log(chalk.cyan(`  Running ${fileName}`));

    if (!match) {
      errors.push(`Invalid file name "${fileName}" in "${directory}"`);
      return;
    }

    const exerciseID = match[1];

    let correctResult, exerciseResult;

    try {
      correctResult = getCorrectResult(directory, exerciseID);
    } catch (error) {
      errors.push(error.message);
      return;
    }

    // Automatically wrap all answers in a 'correct' key
    // if (
    //   !correctResult ||
    //   typeof correctResult !== 'object' ||
    //   !('correct' in correctResult)
    // ) {
    //   fs.writeFileSync(
    //     path.resolve(process.cwd(), directory, `${exerciseID}.json`),
    //     JSON.stringify({ correct: correctResult })
    //   );
    // }

    try {
      exerciseResult = getExerciseResult(filePath);
    } catch (error) {
      errors.push(
        `Error while running ${filePath}: ${error.message}\n${chalk.gray(
          error.stack
        )}`
      );
      return;
    }

    if (exerciseResult !== correctResult.correct) {
      errors.push(
        `Result did not match correct result in "${filePath}"\nGot "${exerciseResult}", but expected "${correctResult}"`
      );
    }
  });
});

if (errors.length) {
  errors.filter(removeDuplicates).forEach(error => {
    logError(error);
  });

  process.exit(1);
}

log(chalk.green(`All ${totalExercises} snippets passed!`));
