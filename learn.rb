def my_flatten
    flattened = []
    self.each do |el|
      el.is_a?(Array) ? flattened += el.my_flatten : flattened << el
    end
    flattened
  end

def my_controlled_flatten(level = nil)
    flattened = []
    self.each do |ele|
      if ele.is_a?(Array) && level != 0
        flattened += (level.nil? ? ele.my_controlled_flatten : ele.my_controlled_flatten(level - 1))
      else
        flattened << ele
      end
    end
    flattened
  end

  def first_even_numbers_sum(n)
    return 2 if n == 1
    2 * n + first_even_numbers_sum(n-1)
  end

  def real_words_in_string(dictionary)
    na = []
    self.each_char.with_index do |x,i|
      self.each_char.with_index do |y,j|
        na << self[i..j]
      end
    end
    na.uniq.select {|word| dictionary.include?(word)}
  end

  def string_include_key?(string, key)
    return true if key.length == 0
    next_key_char = key.chars.first #a  
    key_index = string.index(next_key_char) #d..iß
    return false if key_index.nil?
    string_include_key?(string[key_index+1..-1], key[1..-1])
  end