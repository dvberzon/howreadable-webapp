class Snippet
  attr_accessor :name, :lang
  def initialize name, lang
    self.name = name
    self.lang = lang
  end

  def filename 
    "#{name}.#{lang}"
  end

  def text
    @text ||= File.read(File.join(Rails.root, 'experiment', filename))
  end

  def lang_name
    Experiment.lang_name lang
  end
end