
def is_multiple_of_3_or_5?(number)
	number = number.to_i
   if (number % 3 == 0) || (number % 5 == 0)
	return true
	else
	return false
	end
end


def sum_of_3_or_5_multiples(n)
	tab = [] #initiation au conteneur de tableau
	first = 1
	var = 0

	while first < n.to_i
		if first % 3 == 0  || first % 5 == 0
		tab << first.to_s
		end
		first += 1
	end


	for i in 0..tab.count
		var  =  var + tab[i].to_i
	end
   return var
end