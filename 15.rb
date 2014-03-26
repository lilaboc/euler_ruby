$cache = {}
def bfs(a, b)
  raise if a[0] > b[0] or a[1] > b[1]
  #if (b[0] - a[0] == 1 and b[1] == a[1]) or ( b[1] - a[1] == 1 and a[0] == b[0] )
  #  return 1
  if a[0] == b[0]
    if b[1] - a[1] == 1
      1
    else
      $cache[[a[0], a[1] + 1]] = bfs([a[0], a[1] + 1], b) unless $cache.include?([a[0], a[1] + 1])
      $cache[[a[0], a[1] + 1]]
    end
  elsif a[1] == b[1]
    if b[0] - a[0] == 1
      1
    else
      $cache[[a[0] + 1, a[1]]] = bfs([a[0] + 1, a[1]], b) unless $cache.include?([a[0] + 1, a[1]])
      $cache[[a[0] + 1, a[1]]]
    end
  else

    $cache[[a[0] + 1, a[1]]] = bfs([a[0] + 1, a[1]], b) unless $cache.include?([a[0] + 1, a[1]])
    $cache[[a[0], a[1] + 1]] = bfs([a[0], a[1] + 1], b) unless $cache.include?([a[0], a[1] + 1])

    #bfs([a[0] + 1, a[1]], b) + bfs([a[0], a[1] + 1], b)
    $cache[[a[0] + 1, a[1]]] + $cache[[a[0], a[1] + 1]]
  end
end


p bfs([0, 0], [20, 20])
#p bfs([0, 0], [1, 2])
#p bfs([0, 0], [2, 2])

