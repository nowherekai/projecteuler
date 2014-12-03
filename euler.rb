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
    result = []
    (2..(n/2)).each do |i|
      result << i  if ( n%i != 0 && is_prime?(i))
    end
    result
  end


  def factors(n)
    result = []
    (1..n/2).each do |i|
      result << i if (n%i).zero?
    end
    result
  end

  def factorial(n)
    if n.zero? || n == 1
      1
    else
      (1..n).to_a.inject(:*)
    end
  end

  #recursive computate array's permutation
  #ps. array already has a permuation function
  def permutate(arr)
    if arr.empty? || arr.size == 1
      [arr]
    else
      arr.flat_map do |a|
        without_a = permutate(arr - [a])
        without_a.map do |p|
          ([a] + p)
        end
      end
    end
  end
  #add permutate method to Array class
  class Array
    def my_permutatation
      if  empty? || size == 1
        [self]
      else
        flat_map do |a|
          (self - [a]).my_permutatation.map do |p|
            [a] + p
          end
        end
      end
    end
  end


end
