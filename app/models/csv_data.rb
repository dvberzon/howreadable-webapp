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
        'Index',
        'Example',
        'Participant id',
        'Responded ms',
        'Given answer',
        'Readable score',
        'Comments'
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
            response.example,
            response.responded_ms,
            response.given_answer,
            response.correct? ? '1' : '0',
            response.readable_score,
            response.comments,
          ]
          csv << row
        end
      end
    end
  end
end