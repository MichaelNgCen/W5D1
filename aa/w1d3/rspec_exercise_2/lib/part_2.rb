def palindrome?(str)
    str.each_char.with_index do |c ,i|
        if str[i] != str[-i-1]
            return false
        end
    end
    true
end

def substrings(str)
    na = []
    (0...str.length).each do |o|
        (o...str.length).each do |i|
            na << str[o..i]
        end
    end
    na
end

def palindrome_substrings(str)
    substrings(str).select do |i|
        palindrome?(i) && i.length>1
    end
end


















# def substrings(str)
#     na = []
#     (0...str.length).each do |o|
#         (o...str.length).each do |i|
#             na << str[o..i]
#         end
#     end
#     na
# end

















# def palindrome?(str)
#     na = []
#     i = str.length
#     while na.length != str.length+1
#         na << str[i]
#         i -= 1
#     end
#     na.join("") == str
# end

# def substrings(str)
#     na = []
#     (0...str.length).each do |o|
#         (o...str.length).each do |i|
#             na << str[o..i]
#         end
#     end
#     na
# end

# def palindrome_substrings(str)
#     substrings(str).select do |ss|
#         palindrome?(ss) && ss.length > 1
#     end
# end