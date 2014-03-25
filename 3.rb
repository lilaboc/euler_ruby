def is_prime(n)
  return false if n == 2
  2.upto(n - 1) do |x|
    return false if n % x == 0
  end
  true
end

n = 600851475143 
factors = []
2.upto(600851475143) do |x|
  break if n == 1
  if is_prime(x)
    if n % x == 0
      n = n / x
      factors << x
    end
  end
end
puts factors[-1]

  


