module ResponsesHelper

  def response_progress_percent
    percent = (@response.index + 1) * 100 / @participant.responses.length
    "#{percent}%"
  end

  def random_thanks
    [
      'Great.',
      'Awesome.',
      'Cool.',
      'Good work.',
      'Marvelous.',
      'Excellent.',
      'Bazinga.',
      'Cheers.',
    ].sample
  end
end
