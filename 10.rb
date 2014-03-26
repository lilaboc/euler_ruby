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
  result
end
p sieve(2000000).inject{|sum, x| sum += x}
