a = 0
b = 0
1.upto(100) do |x|
  a += x * x
  b += x
end
p b * b - a

