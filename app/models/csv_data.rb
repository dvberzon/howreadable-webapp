require 'csv'

class CsvData

  def self.generate type
    try(type)
  end

  def self.responses
    CSV.generate do |csv|
      csv << [
        'Participant ID',
        'Main language',
        'Years programming',
        'Language choice',
        'Created at',
        'Agent',
        'IP',
        'Client w',
        'Client h',
        'Response index',
        'Test case',
        'Excercise',
        'Pattern',
        'Responded ms',
        'Given answer',
        'Answer correct?',
      ]
      Response.includes(:participant).order(:id).find_each do |response|
        if(response.given_answer)
          participant = response.participant
          row = [
            participant.id,
            participant.main_language,
            participant.years_programming,
            participant.language_choice,
            participant.created_at,
            participant.agent,
            participant.ip,
            participant.client_w,
            participant.client_h,
            response.index,
            response.test_case,
            response.exercise_id,
            response.pattern,
            response.responded_ms,
            response.given_answer,
            response.correct? ? '1' : '0',
          ]
          csv << row
        end
      end
    end
  end

  def self.participants
    CSV.generate do |csv|
      csv << [
        'Participant ID',
        'Main language',
        'Years programming',
        'Language choice',
        'Created at',
        'Agent',
        'IP',
        'Client w',
        'Client h',
        'Number answered'
      ]
      Participant.includes(:responses).order(:id).find_each do |participant|
        row = [
          participant.id,
          participant.main_language,
          participant.years_programming,
          participant.language_choice,
          participant.created_at,
          participant.agent,
          participant.ip,
          participant.client_w,
          participant.client_h,
          participant.responses.count {|r| r.given_answer }
        ]
        csv << row

      end
    end
  end
end