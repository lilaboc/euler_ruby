puts 1.upto(999).select{|n|n % 3 == 0 or n % 5 == 0}.inject{|sum, n| sum + n}
