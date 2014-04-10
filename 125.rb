# ok, a clever solution could be that.... 
# 100000000 = 10000^2
# any combination below 10000^2 could be the result?
def sum(n)
  seq = []
  min = 1
  max = 1
  sum = 0
  loop do
    if sum < n
      sum += max ** 2
      max += 1
    elsif sum > n
      sum -= min ** 2
      min += 1
    else
      return max - min == 1 ? false : true
    end
    return false if min == max
  end
end

result = 0
2.upto(100000000 - 1) do |x|
  result += x if x.to_s == x.to_s.reverse and sum x
end
p result

