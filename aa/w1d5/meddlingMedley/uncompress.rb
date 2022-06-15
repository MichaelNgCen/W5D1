def uncompress (str)
    na = []
    (0...str.length-1).each do |i|
        letter = str[i]
        num = str[i+1].to_i
        na << letter * num
    end
    na.join("")
        
end

p uncompress('a2b4c1') # 'aabbbbc'
p uncompress('b1o2t1') # 'boot'
p uncompress('x3y1x2z4') # 'xxxyxxzzzz'