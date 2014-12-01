def is_palindrome?(num)
  num_to_str = num.to_s
  num_to_str == num_to_str.reverse
end

#todo 优雅的解决方案？ 有无如python的list comprehension
arr = []
(100...1000).each do |i|
  (100...1000).each do |j|
    arr << i * j if is_palindrome?(i * j)
  end
end

puts arr.max
