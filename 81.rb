c = File.read('81.txt').strip
c = eval("[[" + c.gsub(/\n/, "],[") + "]]")
values = c.dup
c.each_index do |x|
  c[x].each_index do |y|
    if x == 0 and y == 0
      values[x][y] == c[x][y]
    elsif x == 0
      values[x][y] = c[x][y] + values[x][y - 1]
    elsif y == 0
      values[x][y] = c[x][y] + values[x - 1][y]
    else
      values[x][y] = c[x][y] + (c[x - 1][y] > c[x][y - 1] ? values[x][y - 1] : values[x - 1][y])
    end
  end
end
p values[-1][-1]
