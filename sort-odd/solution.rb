def sort_array(source_array)
  odd = source_array.select { |num| num.odd? }.sort
  (0..source_array.size).each do |i|
    if source_array[i].nil?
      next
    elsif source_array[i].odd?
      source_array[i] = odd.shift
    end
  end
  source_array
end
