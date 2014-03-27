#http://www.mathblog.dk/project-euler-26-find-the-value-of-d-1000-for-which-1d-contains-the-longest-recurring-cycle/
require 'set'
greatest = 0
2.upto(1000) do |x|
  s = Set.new
  s.add(10 / x)
  y = 10 % x
  while true do
    y =  (y * 10) % x
    break if y == 0
    if s.include? y
      break
    else
      s.add(y)
    end
  end
  greatest = s.length if greatest < s.length + 1
end
p greatest

