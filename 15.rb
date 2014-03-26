$cache = {}
def bfs(a, b)
  if (b[0] - a[0] == 1 and b[1] == a[1]) or ( b[1] - a[1] == 1 and a[0] == b[0] )
    1
  elsif a[0] == b[0]
    getpoint([a[0], a[1] + 1], b)
  elsif b[1] == a[1]
    getpoint([a[0] + 1, a[1]], b)
  else
    getpoint([a[0] + 1, a[1]], b) + getpoint(([a[0], a[1] + 1]), b)
  end
end

def getpoint(point, b)
    $cache[point] = bfs(point, b) unless $cache.include?(point)
    $cache[point]
end


p bfs([0, 0], [20, 20])

