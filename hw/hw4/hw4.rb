

#Question 4
#Future me: use checklist to merge sets; make sure to look at set documentation for ruby
def unifiedSets(list)
  checkList = []
  tempValue = 0
  list.each { |a| a.each { |b| if checkList.size() == 0 then checkList.push(b)
                               else checkList.each { |c| if c == b then tempValue += 1 end}
                                 if tempValue == 0 then checkList.push(b)
                                   else tempValue = 0
                                   end
                               end } }
  checkList.each { |a| puts a}
end

lists = [[4, 5, 7], [3, 10, 11, 13], [11, 13], [8], [4, 8, 12, 16], [7, 12]]
unifiedSets(lists)  

#Test
def unifiedSet(list)
  checkList = []
  finalPosition = 0
  pastPosition = 0
  currPosition = 0
  tempValue = 0
  list.each { |a| a.each { |b| if checkList.size() == 0 then checkList.push(b)
                               else checkList.each { |c| if c == b then tempValue += 1 end}
                                 if tempValue == 0 then checkList.push(b)
                                   else tempValue = 0
                                   list.each { |d| d.each { |e| if b == e then finalPosition = pastPosition 
                                                                end } pastPosition += 1 } 
                                   end
                               end } 
    currPosition += 1} 
  checkList.each { |a| puts a}
end

def unifiedSetss(list)
  #Test using ruby documentation
end
