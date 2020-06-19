def panagram?(string)
  ('a'..'z').all? { |letter| string.downcase.include?(letter) }
end
