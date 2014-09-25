def makeChange(price, paid)

  # calculate the difference, multiply it by 100 to make things easy on ourselves
  diff = (100*(paid-price)).round(2)

  # these are the denominations that we have to keep in our register. 1000 = $10.00, 500 = $5.00, so on and so forth
  coins = [1000,500,100,25,10,5,1]

  # create the array that will hold our return denominations
  change = []

  # your logic
  coins.each { |coin|
  	change << (diff/coin).floor
  	diff -= ((diff/coin).floor)*coin
  }

  # this array represents the amount of each denomination to return as change
  print change
end


# return the change, you can pass in anything here. First parameter is the price, second parameter is what was paid
makeChange(17.28,20.00)



=begin makeChange v.1
	diff = (100*(paid-price)).round(2)
	# q = (diff/25).floor
	# puts q
	# diff -= (q*25)
	# puts diff

	# d = (diff/10).floor
	# puts d
	# diff -= (d*10)
	# puts diff

	# n = (diff/5).floor
	# puts n
	# diff -= (n*5)
	# puts diff

	# p = (diff/1).floor
	# puts p
	# diff -= (p*1)
	# puts diff
=end
