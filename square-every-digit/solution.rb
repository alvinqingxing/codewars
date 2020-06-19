def square_digits num
  arr = []
  for x in num.to_s.chars
    arr << (x.to_i ** 2)
  end
  arr.join.to_i
end
