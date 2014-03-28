require 'set'
s = Set.new
1.upto(5000) do |x|
  1.upto(5000) do |y|
    next if x == y
    if (x.to_s + y.to_s + (x * y).to_s).chars.sort.join == "123456789"
      s.add(x * y)
    end
  end
end
p s.inject{|sum, x| sum += x}
