require_relative 'euler.rb'
include Euler


puts(fibonacci_2.each_with_index.select { |i, index| i >= 10 ** 999 }.first[1] + 1)
