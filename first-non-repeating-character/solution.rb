def  first_non_repeating_letter(s)
  return "" if s == ""
  arr = s.downcase.chars
  index = arr.index { |char| arr.count(char) == 1 }
  index.nil? ? "" : s[index]
end
