def average(n1, n2)
    (n1 + n2)*0.5
end

def average_array(arr)
    (arr.sum)/(arr.length*1.0)
end

def repeat(str, n)
    na = []
    n.times {na << str}
    na.join("")
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
    na = []
    str.split.each_with_index {|w, i| i.even? ? na << w.upcase : na << w.downcase}
    na.join(" ")
end
