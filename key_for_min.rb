# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'
def key_for_min_value(name_hash)
  arrayofvalues= []

  name_hash.each do |key, value|
    arrayofvalues << value
  end
  i=0
  while i< (arrayofvalues.length-1)
    if arrayofvalues[i] > arrayofvalues[i+1]
      value= arrayofvalues[i]
      arrayofvalues.delete(value)
    elsif arrayofvalues[i] < arrayofvalues[i+1]
      value= arrayofvalues[i+1]
      arrayofvalues.delete(value)
    end
      #arrayofvalues[i], arrayofvalues[i+1] = arrayofvalues[i+1], arrayofvalues[i]

  end
  winner= arrayofvalues[0]
  return name_hash.key(winner)
end
