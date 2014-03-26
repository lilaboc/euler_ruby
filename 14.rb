def collatz(n)
  num = 0
  until n == 1
    if n % 2 == 0
      n /= 2
    else
      n = 3 * n + 1
    end
    num += 1
  end
  num + 1
end

greatest = 0
result = 0
1.upto(1000000) do |x|
  t = collatz(x)
  if t > greatest
    greatest = t
    result = x
  end
end
p result
