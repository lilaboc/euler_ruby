fib = Enumerator.new do |yielder|
  i = 1
  j = 1
  loop do 
    i, j = j, i + j
    yielder.yield i
  end
end
p fib.take_while {|n| n < 4E6}.select{|x| x % 2 != 0 }.inject{|sum, x| sum += x}



