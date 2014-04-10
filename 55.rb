def lychrel(n)
  0.upto(50) do 
    n = n + n.to_s.reverse.to_i
    if n.to_s == n.to_s.reverse
      return false
    end
  end
  true
end

p 1.upto(10000).select{|x|lychrel(x)}.size
