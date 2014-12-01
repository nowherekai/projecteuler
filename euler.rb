require 'pry'
module Euler
  include Math
  #fib 1, use array, c style
  def fibonacci_1(max)
    a, b = 0, 1
    result = []
    result << a << b
    while (fib = a + b) < max do
      result << fib
      a = b
      b = fib
    end

    result
  end

  #fib 2, use lazy enumerator, functional style
  def fibonacci_2
    Enumerator.new { |y|
      a = b = 1
      loop {
        y << a
        a, b = b, a + b
      }
    }.lazy
  end

  #inner helper method
  # this algrothim of judge a prime number is inefficent
  def is_prime?(n)
    (2..sqrt(n)).each do |i|
      if (n%i).zero?
        return false
      elsif (i ** 2 > n)
        return true
      end
    end
  end

  # todo too slow, use other algrothim
  def prime
    Enumerator.new {|y|
      n = 3
      loop {
        y << n if is_prime?(n)
        n += 1
      }
    }.lazy
  end

  def prime_factors(n)
    (2..sqrt(n)).each do |i|
      if (n%i).zero
  end
end
