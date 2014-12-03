require_relative 'euler.rb'
include Euler

# if n is d digits number, then n >= 10 ** (d - 1)
# the sum of factorial of n,  sn <= 9! * d
# n是d的指数函数， 而sn是d的线性函数，所以
# 9! * d >= 10 ** (d - 1) 有解
# 在n <= 7时成立, max 9! * 7


puts ((3..((factorial 9) * 7)).select do |n|
  n.to_s.each_char.inject(0) {|sum, ele| sum + factorial(ele.to_i) }  == n
end.inject(:+))



