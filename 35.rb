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

def mutations(n)
  result = []
  0.upto(n.to_s.length - 1) do |x|
    result << (n.to_s[x+1 .. -1] + n.to_s[0 .. x]).to_i
  end
  result
end

sum = 0
primes = sieve(1000000)
primes.each do |x|
  sum += 1 if mutations(x).all?{|y| primes.include?(y)}
end
p sum
