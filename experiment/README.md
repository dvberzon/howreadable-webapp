# howreadable-experiment
The experiment config for the howreadable webapp

This directory defines the static data for the howreadable.com experiment.

The experiment data itself is defined in `/experiment.yml` and the snippets are defined in subdirectories as js files

The `v1` directory contains the experiment folder from the version 1 experiment.

tests.md describes the various patterns we might test. The patterns we have agreed on so far are:

- Ternary operator vs if else
- Specific vs generic named functions
- Comments vs no Comments
- Pure functions vs side effects
- Order of if
- Named vs inline functions
- If else vs early return
- Abstracting into functions vs local operations
- Chaining methods vs intermediate variables
- Boolean algebra

The experiment.yml file defines the following data structures:

# test cases
Each test case is an experiment to compare two or more specific coding patterns, with the aim of comparing the readability.
As an example, a test case with the id `ternary_if` might compare ternary operators with if else statements.

# patterns
Each test case has two or more patterns. These are the code structures that we are comparing for readability
For example the test case `ternary_if` might have patterns of `ternary` and `if_statment`.

# exercises
Each test case has multiple exercises. Each exercise represents a series of code commands that the participant will read and
try to interpret what it does. There is one code snippet for each combination of exercise and pattern. The exercise has a
question, a set of available answers and a correct answer. For example, we may have an exercise where the user looks at some
code that will return a different string depending on whether a number is greater than or less than a certain value.
This exercise will have two versions, one where the comparison is done with an if statement, and the other where it is written
with a ternary operator

# languages
Each test case is available in one or more programming languages, and all of the snippets will be translated into each of those
available languages.

The code snippets are organised into folders with the test case name. The snippet is then named based on the exercise and the
pattern. The file extension with determine the language.

The path for each snippet is therefore..

`./<test_case>/<excercise_id>_<pattern>.<language>`

So for:
- test_case = `ternary_if`
- exercise_id = `1`
- pattern = `ternary`
- language = `js`

The snippet will be defined in

`./ternary_if/1_ternary.js`

# setup and tests

Ensure you are using at least node `12.8` and npm `6.10`.

If you are using nvm simply run the following to use the correct node version:

```
nvm i && nvm use
```

You may also want to run the following to ensure you have the correct npm version:

```
npm i npm@6.10 -g
```

Now you can install dependencies with:

```
npm ci
```

Run tests with:

```
npm test
```

And fix prettier styles with:

```
npm run prettier
```
