# if n contains d digit, and n is the sum of fifth power of its digits, it must hold
# that 
# 10 ** (d - 1) <= n <= d * (9 ** 5)
# then can prove d <= 6
# thus the upper of test if 6 * (9 ** 5)

def sum_of_digits_5_power(n)
  n.to_s.each_char.inject(0) {|sum, s| sum + s.to_i ** 5}
end

puts((10..6*(9**5)).select do |i|
  sum_of_digits_5_power(i) == i
end.inject(:+))


