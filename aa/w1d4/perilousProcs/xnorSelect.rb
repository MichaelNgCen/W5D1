def xnorSelect(arr, prc1, prc2)
    arr.select do |i|
        prc1.call(i) && prc2.call(i) || !prc1.call(i) && !prc2.call(i)
    end
end

is_even = Proc.new { |n| n % 2 == 0 }
is_odd = Proc.new { |n| n % 2 != 0 }
is_positive = Proc.new { |n| n > 0 }
p xnorSelect([8, 3, -4, -5], is_even, is_positive)         # [8, -5]
p xnorSelect([-7, -13, 12, 5, -10], is_even, is_positive)  # [-7, -13, 12]
p xnorSelect([-7, -13, 12, 5, -10], is_odd, is_positive)   # [5, -10]

