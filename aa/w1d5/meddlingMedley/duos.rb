def duos(str)
    cnt = 0
    str.each_char.with_index do |c,i|
        if str[i] == str[i+1]
            cnt += 1
        end
    end
    cnt 
end

p duos('bootcamp')      # 1
p duos('wxxyzz')        # 2
p duos('hoooraay')      # 3
p duos('dinosaurs')     # 0
p duos('e')             # 0