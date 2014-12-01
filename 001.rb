sum = 0
1.upto(999) do |n|
  sum += n if n % 3 == 0 || n % 5 == 0
end
puts sum

sum = (1...1000).select {|n| n % 3 == 0 || n % 5 == 0}
                .inject(&:+)
puts sum

