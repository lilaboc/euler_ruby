require 'set'
s = Set.new
2.upto(100) do |x|
  2.upto(100) do |y|
    s.add(x ** y)
  end
end
p s.length
