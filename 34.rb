
def factorial(n)
  return 1 if n.zero?
  1.upto(n).inject(:*)
end



sum = 0
3.upto(999999) do |x|
  sum += x if x == x.to_s.each_char.inject(0){|sum, y| sum += factorial(y.to_i)}
end
p sum


