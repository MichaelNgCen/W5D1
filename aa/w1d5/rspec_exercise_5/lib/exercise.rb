def zip (ar, *arr)
    ar.zip(*arr)
end

def prizz_proc(arr, prc1, prc2)
    na = []
    arr.each do |i|
        if (prc1.call(i) && !prc2.call(i)) || (!prc1.call(i) && prc2.call(i))
            na << i 
        end
    end
    na
end

def zany_zip (ar, *arr)
    arr.each do |subarray|
        temp = subarray.length
        (temp-ar.length).times{ar <<nil}
    end
    ar.zip(*arr)
end

def maximum(arr, &blk)
    return nil if arr.empty?
    max = arr[0]
    arr.each{|el| max = el if blk.call(el) >= blk.call(max)}
    max
end

def my_group_by(arr, &blk)
    nh = Hash.new{|k,v| k[v] = []}
    arr.each {|i| nh[blk.call(i)]<<i}
    nh
end

def max_tie_breaker(arr, prc, &blk)
    return nil if arr.empty?
    newArr = arr.map{|i| blk.call(i)}
    idx = newArr.index(newArr.max)
    arr.[idx]
end
def cc(arr)

end
def vi(w)
    na = []
    w.each_char.with_index do |c, i|
        if "aeiou".include?(c)
            na << i
        end
    end
    na
end
def silly_syllables(str)
    na = []
    ws = str.split(" ")
    ws.each do |w|
        vi(w)
    end
    na.join(" ")
end