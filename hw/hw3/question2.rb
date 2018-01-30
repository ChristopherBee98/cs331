#Question 2
def reverseSentence(sentence)
  newSentence = ""
  originSentence = String.new(sentence)
  list = originSentence.split(" ")
  reverseList = list.reverse
  reverseList.each { |a| newSentence += (a + " ") }
  puts newSentence
end 

stuff = "one two three four"
reverseSentence(stuff)
