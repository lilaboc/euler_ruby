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

primes = sieve(9999)
result = Set.new
primes.select{|x| x >= 1000}.each do |x|
  mutations = x.to_s.each_char.to_a.permutation.to_a.map(&:join).to_set.to_a.map(&:to_i).select{|x|x>1000}.select{|x|primes.include?(x)}.sort
  if mutations.size > 2
    mutations.each_index do |y|
      if y > 1
        0.upto(y - 1) do |z|
          if mutations.include?(mutations[y] * 2 - mutations[z])
            result.add("#{mutations[z]}#{mutations[y]}#{mutations[y] * 2 - mutations[z]}")
          end
        end
      end

    end
  end
end
result.each{|x|puts x}

