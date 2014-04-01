sum = 0
2.upto(999999) do |x|
  if x.to_s.each_char.inject(0){|sum, y| sum += y.to_i ** 5} == x
    sum += x 
  end
end
p sum

