require_relative 'euler.rb'
include Euler

puts prime().take_while { |x| x < 600851475143 }.to_a
