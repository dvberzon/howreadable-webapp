class Response < ApplicationRecord
  belongs_to :participant

  def test_case_obj
    TestCase.find test_case
  end

  def snippet
    Snippet.new example, participant.language_choice
  end

  def next
    @next ||= participant.responses.where("id > ?", id).first
  end

  def prev
    @prev ||= participant.responses.where("id < ?", id).last
  end
end
