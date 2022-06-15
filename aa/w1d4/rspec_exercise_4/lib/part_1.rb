def my_reject(arr, &blk)
    arr.select do |i|
        !blk.call(i)
    end
end

def my_one?(arr, &blk)
    na = arr.select {|i| blk.call(i)}
    na.length == 1
end

def hash_select(h, &blk)
    nh =  Hash.new(0)
    h.each do |k, v|
        if blk.call(k, v)
            nh[k] = v
        end
    end
    nh
end

def xor_select(arr, prc1, prc2)
    na = []
    arr.each do |i|
        if prc1.call(i) && !prc2.call(i) || !prc1.call(i) && prc2.call(i)
            na << i
        end
    end
    na
end

def proc_count(n, arr)
   arr.count {|prc| prc.call(n)}
end
