require_relative 'euler.rb'
include Euler

#todo  this method is slow , use 3s
# there are more efficent ways to do that
def palindromic?(n)
  n.to_s.reverse == n.to_s && n.to_s(2).reverse == n.to_s(2)
end


puts((1..10 ** 6).select do |n|
  palindromic?(n)
end.inject(:+))

