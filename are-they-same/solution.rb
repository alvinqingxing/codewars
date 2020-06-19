def comp(array1, array2)
  return false if array1.nil? || array2.nil?
  array1.map { |i| i**2 }.sort == array2.sort
end
