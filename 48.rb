p 1.upto(1000).inject(0){|sum, x|sum += x ** x}.to_s[-10..-1]
