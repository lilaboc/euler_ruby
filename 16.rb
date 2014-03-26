p (2 ** 1000).to_s.each_char.inject(0){|sum, x| sum += x.to_i}
