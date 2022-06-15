def first_letter_vowel_count(str)
    ws, cnt = str.split, 0
    ws.each do |i|
        if "aeiou".include?((i[0]).downcase)
            cnt += 1
        end
    end
    cnt
end

def count_true(arr, prc)
    cnt = 0
    arr.each do |i|
        cnt += 1 if prc.call(i)
    end
    cnt
end

def procformation(arr, prc1, prc2, prc3)
    arr.map do |i|
        if prc1.call(i)
            prc2.call(i)
        else
            prc3.call(i)
        end
    end
end

def array_of_array_sum(arr)
    arr.flatten.sum
end

def selective_reverse(str)
    na = []
    ws = str.split(" ")
    ws.each do |i|
        if "aeoiu".include?(i[0]) || "aeoiu".include?(i[-1])
            na << i
        else
            na << i.reverse
        end
    end
    na.join(" ")
end

def hash_missing_keys(h, *x)
    na = []
    x.each do |i|
    if h.has_key?(i)
        na << i
    end
    na
end
