def generateHashtag(str)
  p str
  if str == "" || str == " " || str.squeeze!(" ") == " "
    return false
  else
    str.squeeze!(" ")
    hashtag = ["#"]
    str.split.each { |word| hashtag << word.strip.capitalize }
    hashtag.join.length > 140 ? false : hashtag.join
  end
end
