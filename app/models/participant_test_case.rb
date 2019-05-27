class ParticipantTestCase < ApplicationRecord
  serialize :exercise_patterns
  before_save :randomize_exercise_patterns

  def randomize_exercise_patterns
    unless exercise_patterns
      patterns = test_case.patterns
      exercises = test_case.exercises
      
      pattern_sequence = (0...exercises.length).map do |i|
        patterns[i % patterns.length]
      end.shuffle
      
      self.exercise_patterns = {}
      exercises.each_with_index do |exercise, index|
        exercise_patterns[exercise.id] = pattern_sequence[index] 
      end
    end
  end

  def test_case
    @test_case ||= TestCase.find test_case_id
  end

  def generate_responses participant
    # return there is no language choice
    return unless participant.language_choice
    if test_case.has_lang participant.language_choice
      test_case.exercises.each do |exercise|
        participant.responses.create({
          test_case: test_case_id,
          exercise_id: exercise.id,
          pattern: exercise_patterns[exercise.id]
        })
      end
    end
  end
end
