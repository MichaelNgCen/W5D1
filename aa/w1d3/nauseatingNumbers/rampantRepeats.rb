def rampantRepeats(str, h)
    na = []
    str.each_char do |i|
        if h.has_key?(i)
            h[i].times { na << i }
        else
            na << i
        end
    end
    na.join("")
end

p rampantRepeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
p rampantRepeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
p rampantRepeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
p rampantRepeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'
