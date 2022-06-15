puts"PHASE 1: MODEST PROBLEMS"
puts "duos"
# Write a method duos that accepts a string as an argument and returns the count of the number of times the same character appears consecutively in the given string.

def duos(str)
    cnt = 0
    str.each_char.with_index {|e, i| cnt += 1 if e == str[i+1]}
    cnt
end
p duos('bootcamp')      # 1
p duos('wxxyzz')        # 2
p duos('hoooraay')      # 3
p duos('dinosaurs')     # 0
p duos('e')             # 0
puts "--------------------------------"

puts "sentence_swap"
# Write a method sentence_swap that accepts a sentence and a hash as arguments. 
# The method should return a new sentence where every word is replaced with it's corresponding value in the hash. 
# If a word does not exist as a key of the hash, then it should remain unchanged.
def sentence_swap(str, h)
    na = []
    str.split.each {|i| h.has_key?(i)? na << h[i] : na << i}
    na.join(' ')
end

p sentence_swap('anything you can do I can do',
    'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
) # 'nothing you shall drink I shall drink'

p sentence_swap('what a sad ad',
    'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
) # 'make a happy ad'

p sentence_swap('keep coding okay',
    'coding'=>'running', 'kay'=>'pen'
) # 'keep running okay'
puts "--------------------------------"

puts "hash_mapped"
# Write a method hash_mapped that accepts a hash, a proc, and a block. T
# he method should return a new hash where each key is the result of the original key when given to the block. 
# Each value of the new hash should be the result of the original values when passed into the proc.
def hash_mapped (h, prc, &bck)
    nh = Hash.new(0)
    h.each {|k, v| nh[bck.call(k)] = prc.call(v)}
    nh
end

double = Proc.new { |n| n * 2 }
p hash_mapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

first = Proc.new { |a| a[0] }
p hash_mapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# {25=>"q", 36=>"w"}
puts "--------------------------------"



# puts 'counted_characters'
# Write a method counted_characters that accepts a string as an argument. 
# The method should return an array containing the characters of the string that appeared more than twice. 
# The characters in the output array should appear in the same order they occur in the input string.
def counted_characters(str)
    nh = Hash.new(0)
    str.each_char {|c| nh[c] += 1}
    x = nh.select {|k,v| v > 2} 
    x.keys
end

p counted_characters("that's alright folks") # ["t"]
p counted_characters("mississippi") # ["i", "s"]
p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
p counted_characters("runtime") # []
puts "--------------------------------"

# Write a method triplet_true? that accepts a string as an argument and returns a boolean indicating whether or not the string contains three of the same character consecutively.
def triplet_true(str)
    counted_characters(str) == [] ? false : true
end

p triplet_true('caaabb')        # true
p triplet_true('terrrrrible')   # true
p triplet_true('runninggg')     # true
p triplet_true('bootcamp')      # false
p triplet_true('e')             # false
puts "--------------------------------"

puts "energetic_encoding"
# Write a method energetic_encoding that accepts a string and a hash as arguments. 
# The method should return a new string where characters of the original string are replaced with the corresponding values in the hash. 
# If a character is not a key of the hash, then it should be replaced with a question mark ('?'). 
# Space characters (' ') should remain unchanged.
def energetic_encoding(str, h)
    na = []
    str.each_char do |c|
        if h.has_key?(c)
            na << h[c]
        elsif c == " "
            na << " "
        else
            na << "?"
        end
    end
    na.join("")
end


p energetic_encoding('sent sea',
    'e'=>'i', 's'=>'z', 'n'=>'m', 't'=>'p', 'a'=>'u'
) # 'zimp ziu'

p energetic_encoding('cat',
    'a'=>'o', 'c'=>'k'
) # 'ko?'

p energetic_encoding('hello world',
    'o'=>'i', 'l'=>'r', 'e'=>'a'
) # '?arri ?i?r?'

p energetic_encoding('bike', {}) # '????'
puts "--------------------------------"

puts "uncompress"
# Write a method uncompress that accepts a string as an argument. 
# The string will be formatted so every letter is followed by a number. The method should return an "uncompressed" version of the string where every letter is repeated multiple times given based on the number that appears directly after the letter.
def uncompress(str)
    sa, na = str.scan(/../) , []
    sa.each {|c, i| c[-1].to_i.times {na << c[0]}}
    na.join("")
end

p uncompress('a2b4c1') # 'aabbbbc'
p uncompress('b1o2t1') # 'boot'
p uncompress('x3y1x2z4') # 'xxxyxxzzzz'
puts "--------------------------------"