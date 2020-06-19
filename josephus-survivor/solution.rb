def josephus_survivor(n,k)
  items = (1..n).to_a
  return [] if items.empty?
  dead = []
  n = k - 1
  until items.length == 1 do
    dead << items.rotate!(n).shift
  end
  items[0]
end
