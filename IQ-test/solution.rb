def iq_test(numbers)
  array = []
  numbers.split.each { |num| array << num.to_i }
  even = array.select { |n| n.even? }
  odd = array.select { |n| n.odd? }
  if even.length == 1
    target = even[0]
  elsif odd.length == 1
    target = odd[0]
  end
  array.each_with_index do |num, index|
    return index + 1 if num == target
  end
end
