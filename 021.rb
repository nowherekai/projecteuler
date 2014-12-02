require_relative 'euler.rb'
include Euler

def d(n)
  factors(n).inject(:+)
end

puts((2...10000).select do |a|
  b = d(a)
  d_b = d(b)
  if d_b == a && a != b
    true
  end
end.inject(:+))
