class Response < ApplicationRecord
  belongs_to :participant
  after_create :randomise

  def test_case_obj
    TestCase.find test_case
  end

  def answer_options
    test_case_obj.answer_options participant.language_choice
  end

  def snippet
    Snippet.new test_case, example, participant.language_choice
  end

  def next
    @next ||= participant.responses.find_by index: (index||0) + 1
  end

  def prev
    @prev ||= participant.responses.find_by index: (index||0) - 1
  end

  def correct?
    given_answer == test_case_obj.correct_answer.to_s
  end

  def self.answered
    where.not(given_answer: nil)
  end

  # assign a random example through the randomisation mechanism
  def randomise
    Randomisation::RandomSequence.randomise_response self
  end
end
