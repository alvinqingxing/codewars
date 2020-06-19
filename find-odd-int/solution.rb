def find_it(seq)
  seq.each { |num| return num if seq.count(num).odd? }
end
