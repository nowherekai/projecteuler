require_relative 'euler.rb'
include Euler


def worth(name)
  start = "A".bytes[0]
  name.each_byte.map do |b|
    b - start + 1
  end.inject(:+)
end


names = File.open("names.txt").read().gsub('"', '').split(",")
puts(names.sort.each_with_index.map do |name, index|
  worth(name) * (index + 1)
end.inject(:+))

