class Participant < ApplicationRecord
  include HashedIds
  has_many :responses, dependent: :delete_all
  has_many :participant_test_cases,
    -> { order('created_at desc') },
    dependent: :delete_all
  validates :language_choice, presence: true
  serialize :test_case_order
  before_save :randomize_test_case_order

  def client_dimensions
    client_w && client_h && "#{client_w}X#{client_h}"
  end

  def num_filled_responses
    @num_filled_responses || responses.where.not(given_answer: nil).count
  end

  def start_test_case test_case_id
    participant_test_cases.create({test_case_id: test_case_id})
  end

  def start_next_test_case
    next_id = test_case_order[num_completed_test_cases]
    return unless next_id
    start_test_case next_id
  end

  def num_available_test_cases
    test_case_order.length - num_completed_test_cases
  end

  def num_completed_test_cases
    participant_test_cases.length
  end

  def current_test_case
    participant_test_cases.order(:created_at).where(completed: [nil, false]).last
  end

  def test_case id
    participant_test_cases.where(test_case_id: id).first
  end

  def randomize_test_case_order
    unless test_case_order
      self.test_case_order = TestCase.weighted_random_id_sequence
    end
  end
end
