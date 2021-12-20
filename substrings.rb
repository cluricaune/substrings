dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(substr, dictionary)
  result = Hash.new(0)
  dictionary.each do |word1|
    substr.split(" ").each do |word2|
      if word2.downcase.include?(word1)
        result[word1] += 1
      end
    end
  end
  return result
end

p substring("Howdy partner, sit down! How's it going?", dictionary)