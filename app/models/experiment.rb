class Experiment
  def self.yaml
    @@yaml ||= YAML.load_file(Rails.root.join('experiment','experiment.yml'));
  end

  def self.lang_name lang
    yaml['languages'][lang]
  end

  def self.test_cases_yaml
    yaml['test_cases']
  end

  def self.test_cases
    test_cases_yaml.map do |id, t_def|
      TestCase.new id, t_def
    end
  end
end