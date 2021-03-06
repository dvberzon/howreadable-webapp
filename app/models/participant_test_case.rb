class ParticipantTestCase < ApplicationRecord
  serialize :exercise_patterns
  before_save :randomize_exercise_patterns
  after_create :generate_responses
  belongs_to :participant

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

  def responses
    participant.responses.where(test_case: test_case_id)
  end

  def complete
    update_attribute(:completed, true);
  end

  def index
    participant.test_case_order.index(test_case_id) || 0
  end

  def generate_responses
    # return if there is no language choice
    return unless participant && participant.language_choice
    # return if the langage choice is not valid for this test case
    return unless test_case.has_lang participant.language_choice
    # return if we've already generated responses
    return unless responses.empty?

    # randomise the order of the exercises
    exercises = test_case.exercises
    exercises.shuffle

    exercises.each_with_index do |exercise, index|
      participant.responses.create({
        test_case: test_case_id,
        exercise_id: exercise.id,
        pattern: exercise_patterns[exercise.id],
        index: index,
      })
    end
  end
end
