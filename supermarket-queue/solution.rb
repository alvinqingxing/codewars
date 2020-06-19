def queue_time(customers, n)
  return 0 if customers.size == 0
  queue = customers.compact
  if n == 1
    return queue.reduce(0) { |sum, n| sum + n }
  end
  checkout = []
  checkout = queue.slice!(0, n)
  if queue.size == 0
    return checkout.max
  else
    until queue.size == 0 do
      num = queue.shift
      checkout.sort!
      checkout[0] += num
    end
    return checkout.max
  end
end
