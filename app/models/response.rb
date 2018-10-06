class Response < ApplicationRecord
  belongs_to :participant

  def test_case_obj
    TestCase.find test_case
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
end
