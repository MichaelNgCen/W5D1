def filterOut(arr, &blk)
    na = []
    arr.each {|i| na << i if !blk.call(i)}
    na
end
            
p filterOut([10, 6, 3, 2, 5 ]) { |x| x.odd? }      # [10, 6, 2]
p filterOut([1, 7, 3, 5 ]) { |x| x.odd? }          # []
p filterOut([10, 6, 3, 2, 5 ]) { |x| x.even? }     # [3, 5]
p filterOut([1, 7, 3, 5 ]) { |x| x.even? }         # [1, 7, 3, 5]