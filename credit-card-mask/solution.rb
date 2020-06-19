def maskify(cc)
  cc_array = cc.split("")
  if cc_array.length > 4
    first = cc_array.slice(0 .. -5)
    last = cc_array.slice(-4..-1)
    for char in first
      char.replace("#")
    end
    (first + last).join
  else
    cc
  end
end
