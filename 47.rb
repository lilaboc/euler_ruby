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


def is_prime(n)
  $primes.include?(n) ? true : false
end

def factors(n)
  #s = Set.new()
  num = 0
  $primes.each do |x|
    if x > n
      break
    elsif n % x == 0
      num += 1
    end
  end
  num
end

$primes = sieve(1000000)
consecutive = 0
num = 4
n = 1
loop do 
  if is_prime(n)
    consecutive = 0
  elsif factors(n) == num 
    consecutive += 1
    if consecutive == num
      p n - num + 1
      exit
    end
  else
    consecutive = 0
  end
  n += 1
end
