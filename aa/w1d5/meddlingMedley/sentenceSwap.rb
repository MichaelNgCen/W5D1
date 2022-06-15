def sentenceSwap (str, h)
    na = []
    ws = str.split
    ws.each do |w|
        if h.has_key?(w)
            na << h[w]
        else
            na << w
        end
    end
    na.join(" ")
end

p sentenceSwap('anything you can do I can do',
    'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
) # 'nothing you shall drink I shall drink'

p sentenceSwap('what a sad ad',
    'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
) # 'make a happy ad'

p sentenceSwap('keep coding okay',
    'coding'=>'running', 'kay'=>'pen'
) # 'keep running okay'