def perfectSquare(n)
    (0..n).each do |i|
        if i * i == n 
            return true 
        end
    end
    false
end

p perfectSquare(1)     # true
p perfectSquare(4)     # true
p perfectSquare(64)    # true
p perfectSquare(100)   # true
p perfectSquare(169)   # true
p perfectSquare(2)     # false
p perfectSquare(40)    # false
p perfectSquare(32)    # false
p perfectSquare(50)    # false