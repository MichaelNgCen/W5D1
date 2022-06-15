def pairProduct(arr, pdt)
    arr.each do |i|
        arr.each do |j|
            if i*j == pdt && i > j
                return true
            end
        end
    end
    false
end


p pairProduct([4, 2, 5, 8], 16)    # true
p pairProduct([8, 1, 9, 3], 8)     # true
p pairProduct([3, 4], 12)          # true
p pairProduct([3, 4, 6, 2, 5], 12) # true
p pairProduct([4, 2, 5, 7], 16)    # false
p pairProduct([8, 4, 9, 3], 8)     # false
p pairProduct([3], 12)             # false