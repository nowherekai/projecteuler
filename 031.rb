#1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p) 8中币种，将200换成8种的方式
#这是换零问题
#将总数为a的现金换为n中不同币种的方式的数目等于
#1）将硬币a换为除第一种硬币之外的其他硬币的不同方式的数目， 加上
#2）将现金a-d 换为所有硬币不同种类的方式数目，期中d为第一种硬币的币值
#因为： 上面分成了两种方式，第一种里面没有使用第一种硬币，第二种里面全都使用了第一种硬币。（sicp中文版p26有详细解释)
#用递归的方式解决简单
#todo  英语太差了，明年提升英语到可以把上面的文字用英语写出

#8
KINDS_OF_COINS_ARR = [1, 2, 5, 10, 20, 50, 100, 200]

#entry
def count_change(amount)
  cc amount, 8
end

#
def cc(amount, kinds_of_coins)
  if amount.zero?
    1
  elsif (amount < 0 || kinds_of_coins == 0)
    0
  else
    cc(amount, (kinds_of_coins - 1)) + cc( (amount - KINDS_OF_COINS_ARR[kinds_of_coins - 1]), kinds_of_coins)
  end
end

puts count_change(200)
