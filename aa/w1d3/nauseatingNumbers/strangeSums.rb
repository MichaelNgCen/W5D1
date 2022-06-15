def strangeSums (arr)
    cnt = 0
    arr.each do |i|
        arr.each do |j|
            if i + j == 0 && i > j
                cnt += 1
            end
        end
    end
    cnt
end

p strangeSums([2, -3, 3, 4, -2])     # 2
p strangeSums([42, 3, -1, -42])      # 1
p strangeSums([-5, 5])               # 1
p strangeSums([19, 6, -3, -20])      # 0
p strangeSums([9])                   # 0