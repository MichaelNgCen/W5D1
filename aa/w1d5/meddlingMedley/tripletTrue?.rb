def tripletTrue?(str)
    (0...str.length - 2).each do |i|
        if str[i..i+2] == str[i]*3
            return true
        end
    end
    false
end

p tripletTrue?('caaabb')        # true
p tripletTrue?('terrrrrible')   # true
p tripletTrue?('runninggg')     # true
p tripletTrue?('bootcamp')      # false
p tripletTrue?('e')             # false