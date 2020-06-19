def tickets(people)
  counter_25 = 0
  counter_50 = 0
  for i in (0..people.size) do
    if people[i] == 25
      counter_25 += 1
    elsif people[i] == 50
       counter_50 += 1
       counter_25 -= 1
       if counter_25 < 0
         return "NO"
         break
       else
         next
       end
    elsif people[i] == 100
        if counter_50 >= 1 && counter_25 >= 1
          counter_50 -= 1
          counter_25 -= 1
          if counter_25 < 0
            return "NO"
            break
          else
            next
          end
        elsif counter_50 == 0 && counter_25 >= 3
          counter_25 -= 3
        elsif counter_50 == 0 && counter_25 < 3
          return "NO"
          break
        elsif counter_50 >= 1 && counter_25 == 0
          return "NO"
          break
        end
    else
      return "YES"
    end
  end
end
