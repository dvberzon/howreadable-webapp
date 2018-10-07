class Randomisation::RandomSequence < ActiveRecord::Base
  has_many :random_sequence_entries, -> { order :index }

  def generate_entries num_entries
    index = random_sequence_entries.maximum(:index) || 0 # either add more entries or start at zero
    block_index = random_sequence_entries.maximum(:block_index) || 0 # either add more blocks or start at zero
    count = 0
    while count < num_entries
      block = Randomisation::RandomSequenceEntry.generate_block examples
      block.each do |value|
        random_sequence_entries.create({
          index: index, 
          block_index: block_index,
          value: value,
        }) # create a new RandomSequenceEntry instantiated with index, block_index and value
        index +=1
        count +=1
      end
      block_index += 1
    end
  end

  # return an array of blocks for inspection
  def stats
    stats = {total: 0, assigned: 0, examples: {}}
    examples.each do |example|
      stats[:examples][example] = {name: example, total: 0, assigned: 0}
    end
    blocks = {}
    random_sequence_entries.each do |entry|
      stats[:total] += 1
      stats[:examples][entry.value][:total] += 1
      if entry.assigned_at
        stats[:assigned] += 1
        stats[:examples][entry.value][:assigned] += 1
      end
      blocks[entry.block_index] ||= []
      blocks[entry.block_index].push entry
    end
    stats[:blocks] = blocks.values
    stats
  end

  def self.for_test_case_and_language test_case, language
    # either retrieve existing one or create a new one
    Randomisation::RandomSequence.where(test_case: test_case, language: language).first_or_create
  end

  def self.randomise_response response
    random_sequence = Randomisation::RandomSequence.for_test_case_and_language(
      response.test_case,
      response.participant.language_choice
    )
    random_sequence.assign_next_value response
  end

  def examples
    TestCase.find(test_case).examples
  end

  def assign_next_value response
    if response.present?
      next_entry = nil
      random_sequence_entries.transaction do 
        # make sure all of the following occurs within one atomic database transaction
        next_entry = random_sequence_entries.lock.where(:assigned_to => nil).first # retrieve first unassigned entry. .lock will lock the row
        if(next_entry)
          next_entry.assigned_to = response.id
          next_entry.assigned_at = Time.now
          next_entry.save
        else
          logger.error("ERROR: Random sequence exhausted: #{test_case} #{language}")
        end
      end
      example = next_entry.try(:value) || examples.sample
      assigned_at = next_entry.try(:assigned_at) || Time.now
      response.update_attributes({:example => example, :randomised_at => assigned_at})
    end
  end
end