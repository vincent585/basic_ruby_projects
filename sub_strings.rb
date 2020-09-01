dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(string, dictionary)
  string = string.downcase

  dictionary.reduce(Hash.new(0)) do |result, sub_string|
    if string.include?(sub_string)
      result[sub_string] += string.scan(sub_string).length
    end
    result
  end
end

p sub_strings("Below", dictionary)
p sub_strings("Howdy partner, sit down! How's it going?", dictionary)




