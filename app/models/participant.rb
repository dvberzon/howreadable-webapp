class Participant < ApplicationRecord
  include HashedIds
  has_many :responses, dependent: :delete_all
  has_many :participant_test_cases,
    -> { order('created_at desc') },
    dependent: :delete_all
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


  def available_test_case_ids
    started_ids = started_test_case_ids
    Experiment.test_case_ids.reject do |id|
      started_ids.include? id
    end
  end

  def started_test_case_ids
    participant_test_cases.pluck(:test_case_id)
  end

  def start_next_test_case
    available = available_test_case_ids
    return unless available.length
    # start one of the available test cases at random
    start_test_case available.sample
  end

  def num_available_test_cases
    available_test_case_ids.length
  end

  def current_test_case
    participant_test_cases.order(:created_at).where(completed: [nil, false]).last
  end

  def test_case id
    participant_test_cases.where(test_case_id: id).first
  end
end
