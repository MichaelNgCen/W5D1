def atLeast?(arr, n, &blk)
    cnt = 0 
    arr.each do |i|
        if blk.call(i)
            cnt += 1
        end
    end
    cnt >= n
end

p atLeast?(['sad', 'quick', 'timid', 'final'], 2) { |s| s.end_with?('ly') }
# false
p atLeast?(['sad', 'quickly', 'timid', 'final'], 2) { |s| s.end_with?('ly') }
# false
p atLeast?(['sad', 'quickly', 'timidly', 'final'], 2) { |s| s.end_with?('ly') }
# true
p atLeast?(['sad', 'quickly', 'timidly', 'finally'], 2) { |s| s.end_with?('ly') }
# true
p atLeast?(['sad', 'quickly', 'timid', 'final'], 1) { |s| s.end_with?('ly') }
# true
p atLeast?(['sad', 'quick', 'timid', 'final'], 1) { |s| s.end_with?('ly') }
# false
p atLeast?([false, false, false], 3) { |bool| bool }
# false
p atLeast?([false, true, true], 3) { |bool| bool }
# false
p atLeast?([true, true, true], 3) { |bool| bool }
# true
p atLeast?([true, true, true, true], 3) { |bool| bool }
# true

