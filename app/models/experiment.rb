class Experiment
  def self.yaml
    @@yaml ||= YAML.load_file(Rails.root.join('experiment','experiment.yml'));
  end

  def self.lang_name lang
    languages[lang]
  end

  def self.languages
    yaml['languages']
  end

  def self.test_cases_yaml
    yaml['test_cases']
  end

  def self.test_cases
    test_cases_yaml.map do |id, t_def|
      TestCase.new id, t_def
    end
  end

  def self.years_programming_options
    yaml['years_programming'].map{|value, name| [name, value]}
  end

  def self.translate_answer answer, lang
    translation = yaml['answer_translations'][answer]
    translation ? translation[lang] : answer
  end
end