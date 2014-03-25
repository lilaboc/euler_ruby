def is_prime(n)
  return true if n == 2
  return false if n % 2 == 0
  3.upto(Math.sqrt(n).to_i + 1) do |x|
    return false if n % x == 0
  end
  true
end

n = 2
count = 0
loop do
  count += 1 if is_prime(n)
  if count == 10001
    p n
    exit
  end
  n += 1
end

