class Board
    def initialize 
        @grid = Array.new(3) {Array.new(3,"_")}
    end
    def valid?(ps)
        r, c = ps
        ps.all? {|i| 0 <= i && i < @grid.length}
    end
    def empty?(ps)
        self[ps] == "_"
    end
    def place_mark(ps, mrk)
        raise 'invalid mark' if !valid?(ps) || !empty?(ps)
        self[ps] = mrk
    end
    def print 
        @grid.each {|r| puts r.join(" ")}
    end
    def winRow?(mrk)
        (0...@grid.length).each do |i1|
            cr = 1
            (0...@grid.length - 1).each do |i2|
                cr += 1 if array[i2][i1] == array[i2 + 1][i1]
            end
            return true if cr == array.length
        end
        false
    end
    def winCol?(mrk)
        (0...array.length).each do |i1|
            cc = 1
            (0...@grid.length - 1).each do |i2|
                cc += 1 if array[i1][i2] == array[i1][i2 + 1]
            end
            return true if cc == @grid.length
        end
        false
    end
    def winDiagonal?(mrk)
        flt = @grid.flatten
        l2r, r2l,i ,j = [], [], 0, @grid.length
        while l2r.length < @grid.length
        l2r << flt[i]
        r2l << flt[j-1]
        i += (arr.length+1) 
        j += 2
        end
        r2l.uniq.length == 1 || l2r.uniq.length == 1
    end

    def win?(mrk)
        winRow?(mrk) || winCol?(mrk) || winDiagonal?(mrk)
    end

    def empty_position?
        idx = (0...@grid.length).to_a
        positions = idx.product(idx)
        positions.any? {|ps| empty?(ps)}
    end

end