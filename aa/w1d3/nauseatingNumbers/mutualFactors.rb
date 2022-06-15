def fct(n)
    na = []
    (1..n).each{|i| na << i if n%i == 0}
    na
end
def mutualFactors(*n)
    na = []
    n.each {|i| na << fct(i)}
    na.inject(:&)
end

p mutualFactors(50, 30)            # [1, 2, 5, 10]
p mutualFactors(50, 30, 45, 105)   # [1, 5]
p mutualFactors(8, 4)              # [1, 2, 4]
p mutualFactors(8, 4, 10)          # [1, 2]
p mutualFactors(12, 24)            # [1, 2, 3, 4, 6, 12]
p mutualFactors(12, 24, 64)        # [1, 2, 4]
p mutualFactors(22, 44)            # [1, 2, 11, 22]
p mutualFactors(22, 44, 11)        # [1, 11]
p mutualFactors(7)                 # [1, 7]
p mutualFactors(7, 9)              # [1]
