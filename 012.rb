include Math

def factors_of_num(number)
  arr = []
  (1..sqrt(number)).each do |n|
    arr << n if (number%n).zero?
  end
  arr
end

triangle_numbers = Enumerator.new do |y|
  count, sum = 1, 0
  loop do
    sum += count
    count += 1
    y << sum
  end
end.lazy

prodcut = (1..500).inject(:*)

