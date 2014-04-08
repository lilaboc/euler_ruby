require 'set'

def sieve(below)
  total = below - 2#00000
  array = [].fill(0 .. total){false}
  p = 2
  loop do
    unless array[p - 2]
      2.upto(below / p) do |x|
        array[x * p - 2] = true
      end
    end
    p += 1
    break if p > total
  end
  result = []
  array.each_index{|index|result << index + 2 unless array[index]}
  Set.new(result)
end


primes = sieve(1000000)


max_con = 0
prime = 0
primes_a = primes.to_a
primes_a.each_index do |x|
  sum = 0
  x.upto(primes_a.size - 1) do |y|
    sum += primes_a[y]
    if primes.include?(sum) and y - x > max_con
      max_con = y - x
      prime = sum
    elsif sum > 1000000
      break
    end
  end
end
p prime
p max_con
