#Question 1
def Vingetetun(list)
  total = 0
  list.each { |a| total += a  }
  if (total == 42)
    puts true
  else
    puts false
  end
end

listTrue = [1, 2, 30, 9]
listFalse = [1, 2, 3]
Vingetetun(listTrue)
Vingetetun(listFalse)

