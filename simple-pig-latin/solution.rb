def pig_it text
  arr = []
  for word in text.split
    if word =~ /\w+/
      new_word = word[1..-1] + word[0] + "ay"
      arr << new_word
    else
      arr << word
    end
  end
  arr.join(" ").strip
end
