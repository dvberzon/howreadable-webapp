class Stats
  attr_accessor :participants, :test_cases
  def initialize
    @participant_ids = {}
    self.participants = {total: 0}
    self.test_cases = {}
    Response.includes(:participant).answered.find_each do |response|
      add_response response
    end
    calculate_averages
  end

  private 

  def add_response response
    unless @participant_ids[response.participant_id]
      @participant_ids[response.participant_id] = true
      participants[:total] += 1 
      lang = response.participant.language_choice
      participants[lang] = (participants[lang] || 0) + 1
    end
    test_case = (test_cases[response.test_case] ||= {})
    example = (test_case[response.example] ||= {
      total: 0,
      total_ms: 0,
      total_correct: 0,
      total_readable: 0
    })
    example[:total] += 1
    example[:total_ms] += (response.responded_ms || 0)
    example[:total_correct] += 1 if response.correct?
    example[:total_readable] += (response.readable_score || 0)
  end

  def calculate_averages
    test_cases.each do |k, tc|
      tc.each do |k, example|
        if(total = example[:total])
          example[:average_ms] = example[:total_ms] / total
          example[:percent_correct] = example[:total_correct] * 100 / total
          example[:average_readable] = example[:total_readable] / total
        end
      end
    end
  end
end