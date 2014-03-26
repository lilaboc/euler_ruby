1.upto(1000) do |x|
  (x + 1).upto(1000) do |y|
    z = 1000 - x - y
    if x * x + y * y == z * z
      p x * y * z
      exit
    end
  end
end
