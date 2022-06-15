def atMost? (arr, n, &blk)
    cnt = 0
    arr.each do |i|
        if blk.call(i)
            cnt += 1
        end
    end
    cnt <= n
end

p atMost?([-4, 100, -3], 1) { |el| el > 0 }                         # true
p atMost?([-4, -100, -3], 1) { |el| el > 0 }                        # true
p atMost?([4, 100, -3], 1) { |el| el > 0 }                          # false
p atMost?([4, 100, 3], 1) { |el| el > 0 }                           # false
p atMost?(['r', 'q', 'e', 'z'], 2) { |el| 'aeiou'.include?(el) }    # true
p atMost?(['r', 'i', 'e', 'z'], 2) { |el| 'aeiou'.include?(el) }    # true
p atMost?(['r', 'i', 'e', 'o'], 2) { |el| 'aeiou'.include?(el) }    # false