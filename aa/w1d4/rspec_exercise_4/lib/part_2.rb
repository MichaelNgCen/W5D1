def proper_factors(n)
    na =[]
    (1...n).each do |i|
        if n % i == 0
            na << i 
        end
    end
    na
end

def aliquot_sum(n)
    proper_factors(n).sum
end

def perfect_number?(n)
    aliquot_sum(n) == n
end

def ideal_numbers(n)
    na, x = [], 1
    while na.length < n
        if perfect_number?(x)
            na << x
        end
        x += 1
    end
    na
end