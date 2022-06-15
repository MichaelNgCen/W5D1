# Define your methods here.
def string_map!(str, &blk)
    str.each_char.with_index {|c, i| str[i] = blk.call(c)}
end

def three?(arr, &blk)
    cnt = 0
    arr.each {|i| cnt += 1 if blk.call(i)}
    cnt == 3
end

def nand_select(arr, prc1, prc2)
    na = []
    arr.each {|i| na << i if !(prc1.call(i) && prc2.call(i))}
    na
end

def hash_of_array_sum(h)
    na = []
    h.each_value {|i| na << i}
    na.flatten.sum
end

def rm(w)
    na = []
    w.each_char {|c| "aeiouAEIOU".include?(c)? na << "" : na << c}
    na.join("")
end

def abbreviate(str)
    ws, na = str.split(" "), []
    ws.each {|w| w.length > 4 ? na << rm(w) : na << w}
    p na.join(" ")
end

def hash_selector(h, *x)
    nh = {}
    return h if x.empty?
    x.each {|i| nh[i] = h[i]}
    nh
end