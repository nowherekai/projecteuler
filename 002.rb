require_relative "euler.rb"
include Euler

puts fibonacci_1(4*10**6).select {|x| x % 2 == 0}
                       .inject(&:+)

puts fibonacci_2.select { |x| (x % 2).zero? }.take_while{|x| x < 4 * 10 ** 6}.inject(:+)
