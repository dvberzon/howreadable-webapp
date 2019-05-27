class Participant < ApplicationRecord
  has_many :responses, -> {order :index}, dependent: :delete_all
  validates :language_choice, presence: true

  def client_dimensions
    client_w && client_h && "#{client_w}X#{client_h}"
  end

  def num_filled_responses
    @num_filled_responses || responses.where.not(given_answer: nil).count
  end
end
