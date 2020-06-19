def productFib(prod)
  sequence = [0, 1]
  while sequence.last < prod do
    sequence.push(sequence[-1] + sequence[-2])
  end
  (0..sequence.length).each do |num|
    sequence[num] * sequence[num+1]
    if sequence[num] * sequence[num+1] == prod
    return [sequence[num], sequence[num+1], true]
    elsif sequence[num] * sequence[num+1] > prod &&
      sequence[num-1] * sequence[num] < prod
      return [sequence[num], sequence[num+1], false]
    end
  end
 end
