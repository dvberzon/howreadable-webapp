class TestCase
  attr_accessor :id, :priority, :name, :languages, :patterns, :exercises, :question
  
  def initialize id, yaml
    self.id = id
    self.priority = yaml['priority']
    self.name = yaml['name']
    self.languages = yaml['languages']
    self.patterns = yaml['patterns']
    self.question = yaml['question']
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

  def exercise id
    exercises.find {|exercise| exercise.id.to_s == id.to_s}
  end

  # generate a sequence of test_case ids based on the priority of each test case
  # The first test case should be priority 1
  # Subsequent test cases should be random with weighted by priority
  # where priority 1 is twice as likely than priority 2 to come first
  # and priority 2 twice as likely as priority 3
  def self.weighted_random_id_sequence
    # hash where key is priority and value is an array of test_case ids
    test_cases_by_priority = {}
    Experiment.test_cases.each do |tc|
      priority = tc.priority
      test_cases_by_priority[priority] ||= []
      test_cases_by_priority[priority].push tc.id
    end
    # create an id array where each id appears multiple times dependent on priority
    id_arr = test_cases_by_priority[1] * 4 # priority 1 ids should each appear 4 times
    id_arr += test_cases_by_priority[2] * 2 # priority 1 ids should each appear twice
    id_arr += test_cases_by_priority[3] # priority 3 ids should each appear once
    
    # the first id should be a random high priority one
    first_id = test_cases_by_priority[1].sample

    # return the sequence, shuffling the id array and then only keeping the first of each id
    ([first_id] + id_arr.shuffle).uniq
  end

  def self.distribution_test iterations
    distributions = {}
    iterations.times do
      arr = TestCase.weighted_random_id_sequence
      arr.each_with_index do |id, index|
        distributions[id] ||= []
        distributions[id][index] ||= 0
        distributions[id][index] += 1
      end
    end
    distributions
  end
end