c = eval("[" + File.read("22.txt") + "]")
c.sort!
sum = 0
c.each_index do |x|
  sum += c[x].bytes.inject(0){|sum, z| sum += z - "A".getbyte(0) + 1} * (x + 1)
end
p sum

