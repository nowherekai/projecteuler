include Math
arr = []

(1..1000).each do |a|
  (a..1000).each do |b|
    sum = a * a + b * b
    c = sqrt(sum).to_i
    arr << [a, b, c] if sum == c ** 2 && c <= 1000
  end
end

puts(arr.select do |a, b, c|
      a * b * c if a + b + c == 1000
end.first.inject(&:*))
