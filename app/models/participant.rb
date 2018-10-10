class Participant < ApplicationRecord
  has_many :responses, -> {order :index}, dependent: :delete_all
  after_create :generate_responses
  validates :language_choice, presence: true

  def generate_responses
    # return if we already have responses
    # or there is no language choice
    return unless language_choice
    return unless responses.blank?
    index = 0
    Experiment.test_cases.shuffle.each do |tc|
      if tc.has_lang language_choice
        #example = tc.example_for_participant_id id
        responses.create({test_case: tc.id, index: index})
        index+= 1
      end
    end
  end

  def client_dimensions
    client_w && client_h && "#{client_w}X#{client_h}"
  end

  def num_filled_responses
    @num_filled_responses || responses.where.not(given_answer: nil).count
  end
end
