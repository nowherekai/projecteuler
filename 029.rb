require_relative 'euler.rb'
include Euler

 #ab for 2 ≤ a ≤ 100 and 2 ≤ b ≤ 100

 result = []
 (2..100).each do |a|
   (2..100).each do |b|
     result << a ** b
   end
 end

 puts result.uniq.size
