require 'set'
eightynine = Set.new([89])
one = Set.new([1])
#1.upto 10000000 do |x|
10000000.downto 1 do |x|
  num = x
  chain = [num]
  loop do
    num = num.to_s.each_char.map(&:to_i).inject(0){|sum, x| sum += x ** 2} 
    chain << num
    if one.include? num
      one.merge(chain)
      break
    elsif eightynine.include? num
      eightynine.merge(chain)
      break
    end
  end
end
p eightynine.size
