class Snippet
  attr_accessor :test_case, :name, :lang
  def initialize test_case, name, lang
    self.test_case = test_case
    self.name = name
    self.lang = lang
  end

  def filename 
    "#{name}.#{lang}"
  end

  def text
    @text ||= File.read(File.join(Rails.root, 'experiment', test_case, filename))
  end

  def lang_name
    Experiment.lang_name lang
  end
end