namespace :random_sequences do
  desc "Generate the random sequence for how readable"
  task :generate => :environment do
    puts "in random sequences"
    Experiment.test_cases.each do |test_case|
      test_case.languages.each do |lang|
        puts "generating for #{test_case.id} #{lang}"
        sequence = Randomisation::RandomSequence.for_test_case_and_language(test_case.id, lang)
        sequence.generate_entries 100
      end
    end
  end
end