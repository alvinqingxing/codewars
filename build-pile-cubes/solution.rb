def find_nb(m)
  erased_volume = 0
  original_volume = m
  n = 1
  until original_volume <= 0 do
    erased_volume = n ** 3
    original_volume -= erased_volume
    n += 1
  end
    original_volume == 0 ? n - 1 : -1
end
