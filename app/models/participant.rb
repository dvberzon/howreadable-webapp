class Participant < ApplicationRecord
  has_many :responses, dependent: :delete_all
  has_many :participant_test_cases, dependent: :delete_all
  validates :language_choice, presence: true

  def client_dimensions
    client_w && client_h && "#{client_w}X#{client_h}"
  end

  def num_filled_responses
    @num_filled_responses || responses.where.not(given_answer: nil).count
  end

  def start_test_case test_case_id
    participant_test_cases.create({test_case_id: test_case_id})
  end
end
