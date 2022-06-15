# Write a method that finds the sum of the first n fibonacci numbers recursively. 
# Assume n > 0.

def fibs_sum(n)
  return 0 if n == 0
  return 1 if n == 1

  fibs_sum(n-1) + fibs_sum(n-2) + 1
end

# Write a recursive method that returns the sum of the first n even numbers
# recursively. Assume n > 0.

def first_even_numbers_sum(n)
  return 2 if n == 1
  2 * n + first_even_numbers_sum(n-1)
end

class Array
  # Write an `Array#median` method that returns the median element in an array.
  # If the length is even, return the average of the middle two elements.

  def median
    return nil if empty?
    sorted = self.sort
    if length.odd?
      sorted[length / 2]
    else
      (sorted[length / 2] + sorted[length / 2 - 1]).fdiv(2)
    end
  end  
end

# Write a function `anagrams(str1, str2)` that takes in two words and returns a 
# boolean indicating whether or not the words are anagrams. Anagrams are words 
# that contain the same characters but not necessarily in the same order. Solve 
# this without using `Array#sort` or `Array#sort_by`.

def anagrams(str1, str2)
  letters = Hash.new(0)

  str1.split('').each do |char|
    letters[char] += 1
  end

  str2.split('').each do |char|
    letters[char] -= 1
  end

  letters.all? { |_, v| v.zero? }
end

class Array
  # Write an `Array#my_each(&prc)` method that calls a proc on each element.
  # **Do NOT use the built-in `Array#each`, `Array#each_with_index`, or 
  # `Array#map` methods in your implementation.**
  
  def my_each(&prc)
    i = 0
    while i < self.length
      prc.call(self[i])
      i += 1
    end
    self
  end
end

class Array 
  # Write an `Array#my_each_with_index(&prc)` method that calls a proc on each 
  # element with its index. **Do NOT use the built-in `Array#each`, `Array#map` 
  # or `Array#each_with_index` methods in your implementation.**
  
  def my_each_with_index(&prc)
    i = 0
    while i < self.length
      prc.call(self[i], i)
      i += 1
    end
    self
  end
end

class Array
  # Write a monkey patch of binary search:
  # E.g. [1, 2, 3, 4, 5, 7].my_bsearch(5) => 4
  # **Do NOT use the built in `Array#index` `Array#find_index`, `Array#include?`,
  # or `Array#member` methods in your implementation.**

  def my_bsearch(target)
    return nil if size == 0
    mid = size/2

    case self[mid] <=> target
    when 0
      return mid
    when 1
      return self.take(mid).my_bsearch(target)
    else
      search_res = self.drop(mid+1).my_bsearch(target)
      search_res.nil? ? nil : mid + 1 + search_res
    end
  end
end

