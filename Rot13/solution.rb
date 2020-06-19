def rot13(string)
  result = []
  string.chars.map do |char|
    result << char.tr('A-Za-z', 'N-ZA-Mn-za-m')
  end
  result.join
end
