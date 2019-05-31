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
    lang = response.participant.language_choice
    unless @participant_ids[response.participant_id]
      @participant_ids[response.participant_id] = true
      participants[:total] += 1 
      lang = response.participant.language_choice
      participants[lang] = (participants[lang] || 0) + 1
    end
    test_case = (test_cases[response.test_case] ||= {})
    pattern = (test_case[response.pattern] ||= {})
    pattern[:overall] ||= ({
      total: 0,
      total_ms: 0,
      total_correct: 0,
      total_readable: 0
    })
    pattern[lang] ||= ({
      total: 0,
      total_ms: 0,
      total_correct: 0,
      total_readable: 0
    })
    [pattern[:overall], pattern[lang]].each do |stat|
      stat[:total] += 1
      stat[:total_ms] += (response.responded_ms || 0)
      stat[:total_correct] += 1 if response.correct?
    end
  end

  def calculate_averages
    test_cases.each do |k, tc|
      tc.each do |k, pattern|
        pattern.each do |lang, stat|
          if(total = stat[:total])
            stat[:average_ms] = stat[:total_ms].to_f / total
            stat[:percent_correct] = stat[:total_correct].to_f * 100 / total
            stat[:average_readable] = stat[:total_readable].to_f / total
          end
        end
      end
    end
  end
end