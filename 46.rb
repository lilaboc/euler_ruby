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



def composite(n)
  $primes.each do |x|
    return true if n % x == 0 and n != x
  end
  false
end


$primes = sieve(1000000)


n = 1
loop do 
  if composite(n)
    m = 1
    loop do
      p = n - m * m * 2
      break if $primes.include?(p)
      if p < 0
        p n
        exit
      end
      m += 1
    end
    p "#{n} = #{n-m*m*2} + #{m}^2 * 2"
  end
  n += 2
end
