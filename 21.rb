require 'set'
def d(num)
  total = 0
  2.upto(Math.sqrt(num).to_i) do |x|
    if num % x == 0
      total += x + num / x
    end
  end
  total + 1
end

sum = 0
s = Set.new
1.upto(9999) do |x|
  unless s.include?(x)
    y = d(x)
    if d(y) == x and x != y
      sum += x + y
      s.add(x)
      s.add(y)
    end
  end
end
p sum
