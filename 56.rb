max = 0
1.upto(99) do |a|
  1.upto(99) do |b|
    sum = (a ** b).to_s.each_char.inject(0){|sum, x| sum += x.to_i}
    max = sum if sum > max
  end
end
p max
