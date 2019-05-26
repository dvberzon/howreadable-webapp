class ParticipantTestCase < ApplicationRecord
  serialize :excercise_patterns

  def randomize_excercise_patterns
    #unless excercise_patterns
      test_case = TestCase.find test_case_id
      patterns = test_case.patterns
      exercises = test_case.exercises
      
      pattern_sequence = (0...exercises.length).map do |i|
        patterns[i % patterns.length]
      end.shuffle
      
      excercise_patterns = {}
      exercises.each_with_index do |exercise, index|
        excercise_patterns[exercise.id] = pattern_sequence[index] 
      end
    #end
    excercise_patterns
  end
end
