sum = 1
start = 1
2.upto(501) do |x|
  4.times do
    start += 2 * (x - 1)
    sum += start
  end
end
p sum



