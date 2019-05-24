class TestCase
  attr_accessor :id, :name, :intro, :languages, :patterns, :exercises
  
  def initialize id, yaml
    self.id = id
    self.name = yaml['name']
    self.intro = yaml['intro']
    self.languages = yaml['languages']
    self.patterns = yaml['patterns']
    self.exercises = yaml['exercises'].map do |exercise_yaml|
      Exercise.new exercise_yaml
    end
  end

  def self.find id
    if yaml_def = Experiment.test_cases_yaml[id]
      TestCase.new id, yaml_def
    end
  end

  def has_lang lang
    languages.include? lang
  end

end