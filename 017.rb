
a1 = (1...10).to_a
s_1 = %W[one two three four five six seven eight nine]
s_2 = %W[ten eleven twelve thirtheen fourteen fifteen sixteen seventeen eighteen nineteen]
s_ten_digit = %W[twenty  thirty forty fifty sixty seventy eighty ninety]

s_two_digit = s_1.map {|s| s + " " + "hundred"}

sum1 = s_1.inject(0) {|sum, s| sum + s.size }
sum2 = s_2.inject(0) {|sum, s| sum + s.size }

