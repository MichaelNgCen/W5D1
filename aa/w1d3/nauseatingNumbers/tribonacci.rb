def tribonacci(n)
    s = [1, 1, 2]
    while s.length <= n
        s << s[-3] + s[-2] + s[-1]
    end
    s[n-1]
end

p tribonacci(1)  # 1
p tribonacci(2)  # 1
p tribonacci(3)  # 2
p tribonacci(4)  # 4
p tribonacci(5)  # 7
p tribonacci(6)  # 13
p tribonacci(7)  # 24
p tribonacci(11) # 274