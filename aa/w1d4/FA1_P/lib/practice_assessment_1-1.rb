# Define your methods here. 
def first_letter_vowel_count (str)
    cnt, ws = 0, str.split(" ")
    ws.each {|w| cnt += 1 if "aeiou".include?(w[0].downcase)}
    cnt
end

def count_true(arr, prc)
    cnt = 0
    arr.each {|i|cnt += 1 if prc.call(i)}
    cnt
end

def procformation (arr, prc1, prc2, prc3)
    na = []
    arr.each {|i| prc1.call(i) ? na << prc2.call(i) : na << prc3.call(i)}
    na
end

def array_of_array_sum(arr)
    arr.flatten.sum
end

def selective_reverse(str)
    na, v, ws = [], "aeiou", str.split(" ")
    ws.each {|w|(v.include?(w[0]) || v.include?(w[-1])) ? na << w : na << w.reverse!}
    na.join(" ")
end

def hash_missing_keys(h, *a)
    na = []
    a.each {|x| na << x if !h.has_key?(x)}
    na
end