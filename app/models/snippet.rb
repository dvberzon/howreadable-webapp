class Snippet
  attr_accessor :test_case, :exercise_id, :pattern, :lang
  def initialize test_case, exercise_id, pattern, lang
    self.test_case = test_case
    self.exercise_id = exercise_id
    self.pattern = pattern
    self.lang = lang
  end

  def filename 
    "#{exercise_id}_#{pattern}.#{lang}"
  end

  def text
    @text ||= File.read(File.join(Rails.root, 'experiment', test_case, filename))
  end

  def lang_name
    Experiment.lang_name lang
  end
end