def partition (arr, n)
    na1, na2, na3 = [], [], []
    arr.each {|i| n <= i ? na2 << i : na1 << i}
    na3 << na1 << na2
end

def merge(h1, h2)
    nh = {}
    h1.each {|k,v| nh[k] = v}
    h2.each {|k,v| nh[k] = v}
    nh
end


def censor(str, arr)
    na = []
    ws = str.split(" ")
    ws.each do |i|
        if arr.include?(i.downcase)
            na << star(i)
        else
            na << i
        end
    end   
    na.join(" ")
end
def star(str)
    na = []
    str.each_char do |i|
        if "aeiou".include?(i.downcase)
            na << "*"
        else
            na << i
        end
    end
    na.join("")
end

def power_of_two?(n)
    i = 1
    while i <= n
        if i==n
            return true
        end
        i *= 2
    end
    false
end
