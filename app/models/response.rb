class Response < ApplicationRecord
  belongs_to :participant

  def test_case_obj
    TestCase.find test_case
  end

  def exercise_obj
    test_case_obj.try(:exercise, exercise_id)
  end

  def answer_options
    exercise_obj.answer_options participant.language_choice
  end

  def snippet
    Snippet.new test_case, exercise_id, pattern, participant.language_choice
  end

  def next
    @next ||= participant.responses.find_by(test_case: test_case, index: (index||0) + 1)
  end

  def prev
    @prev ||= participant.responses.find_by(test_case: test_case,  index: (index||0) - 1)
  end

  def correct?
    given_answer == exercise_obj.try(:correct_answer).try(:to_s)
  end

  def self.answered
    where.not(given_answer: nil)
  end

  def skip
    self.update_attribute(:skipped, true)
  end
  
end
