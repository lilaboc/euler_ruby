p 1.upto(100).inject{|sum, x| sum * x}.to_s.each_char.inject(0){|sum, x| sum += x.to_i}
