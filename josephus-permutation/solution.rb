def josephus(items,k)
  return [] if items.empty?
  dead = []
  n = k - 1
  until items.empty? do
    dead << items.rotate!(n).shift
  end
  dead
end
