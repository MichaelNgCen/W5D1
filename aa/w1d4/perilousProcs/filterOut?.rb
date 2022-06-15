def filterOut?(arr, &blk)
    arr.uniq.each {|i| arr.delete(i) if blk.call(i)}
end

arr_1 = [10, 6, 3, 2, 5 ]
filterOut?(arr_1) { |x| x.odd? }
p arr_1     # [10, 6, 2]

arr_2 = [1, 7, 3, 5 ]
filterOut?(arr_2) { |x| x.odd? }
p arr_2     # []

arr_3 = [10, 6, 3, 2, 5 ]
filterOut?(arr_3) { |x| x.even? }
p arr_3     # [3, 5]

arr_4 = [1, 7, 3, 5 ]
filterOut?([1, 7, 3, 5 ]) { |x| x.even? }
p arr_4 # [1, 7, 3, 5]