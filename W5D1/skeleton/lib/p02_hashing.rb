class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    sum = 0
    self.each_with_index do |el, i|
      sum += el.hash * (i + 1)
    end
    sum
  end
end

class String
  def hash
    sum = 0
    self.each_char.with_index do |el, i|
      sum += el.ord * (i + 1)
    end
    sum
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
