def fct(i)
    na = []
    (1...i).each do |x|
        if i%x == 0
            na << x
        end
    end
    na.length
end
def antiPrime?(n)
    (0...n).each do |i|
        if fct(i) > fct(n)
            return false
        end
    end
    return true
end

p antiPrime?(24)   # true
p antiPrime?(36)   # true
p antiPrime?(48)   # true
p antiPrime?(360)  # true
p antiPrime?(1260) # true
p antiPrime?(27)   # false
p antiPrime?(5)    # false
p antiPrime?(100)  # false
p antiPrime?(136)  # false
p antiPrime?(1024) # false