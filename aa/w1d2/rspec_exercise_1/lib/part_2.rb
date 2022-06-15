def hipsterfy(word)
    word.reverse.each_char.with_index {|c, i| return (word.reverse[0...i] + word.reverse[i+1..-1]).reverse if "aeiou".include?(c)}
    word
end

def vowel_counts(str)
    nh = Hash.new(0)
    str.each_char {|i| nh[i.downcase] += 1 if "aeiou".include?(i.downcase)}
    nh
end

def caesar_cipher(str, n)
    a, na = ("a".."z").to_a, []
    str.each_char {|c| a.include?(c) ? na << a[(a.index(c)+n)%26] : na << c}
    na.join("")
end
