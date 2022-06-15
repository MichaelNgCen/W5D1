def countedCharacters(str)
    nh = Hash.new(0)
    na = []
    str.each_char do |c|
        nh[c] += 1
    end
    nh.each {|k,v| na << k if v >2}
    na
end
p countedCharacters("that's alright folks") # ["t"]
p countedCharacters("mississippi") # ["i", "s"]
p countedCharacters("hot potato soup please") # ["o", "t", " ", "p"]
p countedCharacters("runtime") # []
