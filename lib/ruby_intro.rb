# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  arr.each { |item| total += item }
  total
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr = arr.sort
    return arr.pop + arr.pop
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).to_a.each do |item|
    if item[0] + item[1] == n
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  unless s[0].nil?
    unless s[0].downcase[/[a-z]/].nil?
      return s[0].downcase[/[a-z]/][/[aeiou]/].nil?
    end
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.match(/^[10]+$/)
    return s.to_i % 4 == 0
  else
   return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize isbn, price
    (raise ArgumentError, "Invalid ISBN or price.") if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % price
  end
end

