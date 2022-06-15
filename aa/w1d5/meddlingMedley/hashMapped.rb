def hashMapped(h, prc, &blk)
    nh = {}
    h.each do |k, v|
        nh[blk.call(k)] = prc.call(v)
    end
    nh
end

double = Proc.new { |n| n * 2 }
p hashMapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

first = Proc.new { |a| a[0] }
p hashMapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# {25=>"q", 36=>"w"}