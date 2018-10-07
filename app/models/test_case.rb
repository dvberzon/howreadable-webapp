class TestCase
  attr_accessor :id, :name, :question, :answers, :correct_answer, :languages, :examples

  def initialize id, yaml
    self.id = id
    self.name = yaml['name']
    self.question = yaml['question']
    self.answers = yaml['answers']
    self.correct_answer = yaml['correct_answer']
    self.languages = yaml['languages']
    self.examples = yaml['examples']
  end

  def self.find id
    if yaml_def = Experiment.test_cases_yaml[id]
      TestCase.new id, yaml_def
    end
  end

  def has_lang lang
    languages.include? lang
  end

  def answer_options lang
    answers.map {|ans| [ans, Experiment.translate_answer(ans, lang)]}
  end

end