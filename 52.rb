require 'set'

start = 1
loop do
  s = start.to_s.chars.to_set
  wrong = false
  2.upto(6) do |x|
    if s != (start * x).to_s.chars.to_set
      wrong = true
      break
    end
  end
  unless wrong
    p start
    exit
  end
  start += 1
end

