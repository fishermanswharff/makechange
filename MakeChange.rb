def makeChange(price, paid)

  # calculate the difference,
  diff = (100*(paid-price)).round(2)
  coins = [1000,500,100,25,10,5,1]
  change = []
  coins.each { |coin|
  	change << (diff/coin).floor
  	diff -= ((diff/coin).floor)*coin
  }
  puts change
end

makeChange(17.50,20.00)


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

# challenge: write a letter, track those changes through github
# git real
