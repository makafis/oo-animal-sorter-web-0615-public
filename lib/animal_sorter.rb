# Build a class AnimalSorter

# Make sure there are two constants that AnimalSorter knows about, 
# SEA_ANIMALS and LAND_ANIMALS

# AnimalSorter should be able to accept an array of animals on 
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.
require 'pry'
class AnimalSorter
SEA_ANIMALS = ["marlin", "octopus", "fish"]
LAND_ANIMALS = ["aardvark", "cat", "elephant"]

def initialize(array)
  @split_array = array.each do |value|
    value
  end
end


def to_a
  @return_array = [[],[]]
  @split_array.each do |value|
    if SEA_ANIMALS.include?(value)
      @return_array[0] << value
    elsif LAND_ANIMALS.include?(value)
      @return_array[1] << value
    end
  end
  @return_array
end



end