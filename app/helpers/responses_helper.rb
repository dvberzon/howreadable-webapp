module ResponsesHelper

  def response_progress_percent
    percent = (@response.index + 1) * 100 / @participant.responses.length
    "#{percent}%"
  end
end
