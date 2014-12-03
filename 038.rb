require_relative 'euler.rb'
include Euler

# the number has the below format
# ABCD.EFGHI  and ABCD * 2 = EFGHI

(1..9).to_a.permutation.to_a.sort.reverse.each do |comp|
  i, j = comp[0...4].join("").to_i, comp[4..-1].join("").to_i
  if i * 2 == j
    puts comp.join("")
    break
  end
end
