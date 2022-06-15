def matrixAddition (m1, m2)
    h = m1.length
    w = m1[0].length
    res = Array.new(h) { [0] * w}
    (0...h).each do |r|
        (0...w).each do |c|
            res[r][c] = m1[r][c] +m2[r][c]
        end
    end
    res
end

matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

p matrixAddition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
p matrixAddition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
p matrixAddition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
p matrixAddition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]