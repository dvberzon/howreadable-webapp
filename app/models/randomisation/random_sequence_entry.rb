class Randomisation::RandomSequenceEntry < ActiveRecord::Base
  belongs_to :random_sequence
  
  NUMBER_EACH_VALUE_IN_BLOCK =  [2,4]

  def self.generate_block values
    num_each_value = NUMBER_EACH_VALUE_IN_BLOCK.sample
    block = values * num_each_value
    block.shuffle!
  end
end