def firstIndex(arr, &blk)
    arr.each_with_index do |x,i|
        if blk.call(x)
            return i
        end
    end
    nil
end

p firstIndex(['bit', 'cat', 'byte', 'below']) { |el| el.length > 3 }           # 2
p firstIndex(['bitten', 'bit', 'cat', 'byte', 'below']) { |el| el.length > 3 } # 0
p firstIndex(['bitten', 'bit', 'cat', 'byte', 'below']) { |el| el.length > 6 } # nil
p firstIndex(['bit', 'cat', 'byte', 'below']) { |el| el[0] == 'b' }            # 0
p firstIndex(['bit', 'cat', 'byte', 'below']) { |el| el.include?('a') }        # 1
p firstIndex(['bit', 'cat', 'byte', 'below']) { |el| el[0] == 't' }            # nil