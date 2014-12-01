def evenly_divisible_by_1_to_20?(n)
  (1..20).each do |i|
    return false unless (n % i).zero?
  end
  true
end

def smaller_positive_number
  Enumerator.new do |y, n: 20|
    loop do
      y << n if evenly_divisible_by_1_to_20?(n)
      n += 1
    end
  end.take 1
end

puts smaller_positive_number.to_a
