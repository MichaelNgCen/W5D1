def multiMap(arr, n = 1, &blk)
    na = []
    arr.each do |i|
        n.times { i = blk.call(i)}
        na << i
    end
    na
end


p multiMap(['pretty', 'cool', 'huh?']) { |s| s + '!'}      # ["pretty!", "cool!", "huh?!"]
p multiMap(['pretty', 'cool', 'huh?'], 1) { |s| s + '!'}   # ["pretty!", "cool!", "huh?!"]
p multiMap(['pretty', 'cool', 'huh?'], 3) { |s| s + '!'}   # ["pretty!!!", "cool!!!", "huh?!!!"]
p multiMap([4, 3, 2, 7], 1) { |num| num * 10 }             # [40, 30, 20, 70]
p multiMap([4, 3, 2, 7], 2) { |num| num * 10 }             # [400, 300, 200, 700]
p multiMap([4, 3, 2, 7], 4) { |num| num * 10 }             # [40000, 30000, 20000, 70000]