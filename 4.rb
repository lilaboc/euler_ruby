r = []
999.downto(1) do |x|
  999.downto(1) do |y|
    s = (x * y).to_s
    r << s.to_i  if s == s.reverse
  end
end
p r.sort[-1]


