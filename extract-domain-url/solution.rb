def domain_name(url)
  p url
  first_split = url.split(".")
  if first_split[0].include?("http://")
    first_split[0].sub!("http://", "")
    first_split[0] == "www" ? first_split[1] : first_split[0]
  elsif first_split[0].include?("https://")
    first_split[0].sub!("https://", "")
    first_split[0] == "www" ? first_split[1] : first_split[0]
  else
    first_split[0] == "www" ? first_split[1] : first_split[0]
  end
 end
