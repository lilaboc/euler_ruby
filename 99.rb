largest = 0
lno = 0
File.foreach('99.txt').with_index do |line, num|
  a, b = line.strip.split(",")
  c = a.to_i ** b.to_i
  if c > largest
    largest = c
    lno = num
  end
end
p lno + 1
