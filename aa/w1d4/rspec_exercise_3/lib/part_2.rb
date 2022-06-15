def element_count(arr)
    nh = Hash.new(0)
    arr.each {|i|nh[i] += 1}
    nh
end

def char_replace!(str, h)
    na = []
    str.each_char.with_index {|c, i| str[i] = h[c] if h.include?(c)}
    str
end

def product_inject(n)
    n.inject {|a,i| a*i}
end