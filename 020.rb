def factorial(n)
  res = 1
  (1..n).each do |i|
    res *= i
  end
  res
end

puts factorial(100).to_s.each_char.map(&:to_i).inject(&:+)

fac = Enumerator.new do |y|
  n = 1
  res = 1
  loop do
    res *= n
    n += 1
    y << res
  end
end
