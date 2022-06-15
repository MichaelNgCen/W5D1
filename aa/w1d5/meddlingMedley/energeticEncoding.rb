def energeticEncoding(str, h)
    na = []
    str.each_char do |c|
        if h.include?(c)
            na << h[c]
        elsif c == " "
            na << " "
        else
            na << "?"
        end
    end
    na.join("")
end

p energeticEncoding('sent sea',
    'e'=>'i', 's'=>'z', 'n'=>'m', 't'=>'p', 'a'=>'u'
) # 'zimp ziu'

p energeticEncoding('cat',
    'a'=>'o', 'c'=>'k'
) # 'ko?'

p energeticEncoding('hello world',
    'o'=>'i', 'l'=>'r', 'e'=>'a'
) # '?arri ?i?r?'

p energeticEncoding('bike', {}) # '????'