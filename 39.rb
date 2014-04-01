max_num = 0
max = 0
1.upto(1000) do |p|
  solution = 0
  1.upto(p / 4) do |x|
    (p / 4).upto(p / 2) do |y|
      if x * x + y * y == (p - x - y) * (p - x - y)
        solution += 1
      end
    end
  end
  if solution > max
    max = solution
    max_num = p
  end
end
p max
p max_num

