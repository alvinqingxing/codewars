def find_uniq(arr)
  results = []
  sorted = arr.sort
  (0..sorted.size).each do |i|
    if sorted[0] != sorted[1]
      return sorted[0]
    elsif sorted[i] == sorted[i+1]
      next
    elsif sorted[i-1] != sorted[i]
      return sorted[i]
    end
  end
end
