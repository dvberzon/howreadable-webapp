class Participant < ApplicationRecord
  has_many :responses, dependent: :delete_all
  after_create :generate_responses

  def generate_responses
    # return if we already have responses
    # or there is no language choice
    return unless language_choice
    return unless responses.blank?
    puts 'got here'
    Experiment.test_cases.shuffle.each do |tc|
      puts "tc #{tc}"
      if tc.has_lang language_choice
        puts 'about to create response'
        responses.create({test_case: tc.id, example: tc.rand_example})
      end
    end
  end
end
