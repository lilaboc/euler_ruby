def divisors(num)
  total = 0
  1.upto(Math.sqrt(num).to_i) do |x|
    total += 2 if num % x == 0
  end
  total
end

num = 1
last_tri = 0
loop do
  t = last_tri + num
  last_tri = t
  if divisors(t) > 500
    p t
    exit
  end
  num += 1
end
