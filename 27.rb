require 'set'

def is_prime(n)
  return false if n == 2
  2.upto(n - 1) do |x|
    return false if n % x == 0
  end
  true
end

ma = 0
mb = 0
greatest = 0

-999.upto(999) do |a|
  -999.upto(999) do |b|
    n = 0
    while is_prime((n * n + a * n + b).abs)
      n += 1
    end
    if n > greatest
      ma = a
      mb = b
      greatest = n
    end
  end
end
p ma * mb
