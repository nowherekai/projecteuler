require_relative 'euler.rb'
include Euler


def abundant_number?(n)
  factors(n).inject(:+) > n
end

def abundant_numbers
  (2..28123).select do |i|
    abundant_number?(i)
  end
end

abs = abundant_numbers
result = []
(0...abs.size).each do |i|
  ai = abs[i]
  (0..i).each do |j|
    aj = abs[j]
    s = ai + aj
    result << s
    break if s > 28123
  end
end


puts ((2..28123).to_a - result.uniq).inject(:+)
