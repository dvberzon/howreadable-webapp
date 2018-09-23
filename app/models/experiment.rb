class Experiment
  def self.yml
    @@yaml ||= YAML.load_file(Rails.root.join('experiment','experiment.yml'));
  end

  def self.lang_name lang
    yml['languages'][lang]
  end
end