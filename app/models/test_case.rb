class TestCase
  attr_accessor :id, :name, :question, :correct_answer, :languages, :examples

  def initialize id, yaml
    self.id = id
    self.name = yaml['name']
    self.question = yaml['question']
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

  def rand_example
    # todo, use randomisation
    examples.sample
  end

  def example_for_participant_id id
    # instead of full randomisation, spread the tests around by using
    # the participant id as the index for the example
    examples[id % examples.length]
  end

end