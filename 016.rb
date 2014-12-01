puts (2 ** 1000).to_s.each_char.inject(0) { |sum, e| sum += e.to_i}
