def is_prime?(n)
    (2...n).each do |i|
        return false if n%i == 0
    end
    n > 1
end


def nth_prime(n)
    prime_count = 0
    i = 1
    while prime_count < n
      i += 1
      prime_count += 1 if is_prime?(i)
    end
    i
end

def prime_range(min, max)
    na = []
    (min..max).each do |i|
        if is_prime?(i)
            na << i
        end
    end
    na
end
