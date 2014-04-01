sum = 0
1.upto(1000000) do |x|
  bin = x.to_s(2).gsub(/^0*/, "")
  decimal = x.to_s
  sum += x if bin == bin.reverse and decimal == decimal.reverse
end
p sum
