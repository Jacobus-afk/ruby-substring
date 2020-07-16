dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dict)
    wordbank = Hash.new(0)
    text.downcase.split(' ').each do |word|
        dict.each do |dict_entry|
            if word.include?(dict_entry)
                wordbank[dict_entry] += 1
            end
        end
    end
    wordbank.sort_by{|key| key}.to_h
end

# substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)