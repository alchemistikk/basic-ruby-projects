dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","low","partner","sit"]

# Return a hash with each substring (and its number of occurences) of the word
# found in the dictionary

def substrings(word, dictionary)
  arr = Array.new
  dictionary.each { |elem| arr.push(elem) if word.include?(elem) }
  arr.tally
end

puts substrings("below", dictionary) #=> { "below" => 1, "low" => 2 } 