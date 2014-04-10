h = Hash.new(){|hash, key|hash[key]=[]}
i = 5
loop do
  key = (i ** 3).to_s.each_char.to_a.map(&:to_i).sort
  h[key] << i
  if h[key].size == 5
    p h[key][0] ** 3
    exit
  end
  i += 1
end
