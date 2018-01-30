#Question 1
def Vingetetun(list)
  total = 0
  list.each { |a| total += a }
  if (total == 42)
    puts true
  else
    puts false
  end
end

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

#Question 3
class Student
  def initialize
    @name = String.new()
    @age = Integer
    @id = Integer
    @grade = Integer
  end

  def this?(id)
    @id == id
  end

  def name()
    @name
  end

  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
  end

  def id=(id)
    @id = id
  end

  def grade()
    @grade
  end

  def grade=(grade)
    @grade = grade
  end
end

class Students
  def initialize
    @students = Array[]
  end

  def add(name, age, id, grade)
    newStudent = Student.new
    newStudent.name=(name)
    newStudent.age=(age)
    newStudent.id=(id)
    newStudent.grade=(grade)
    @students.push(newStudent)
  end

  def find(id)
    isPerson = false
    @students.each { |a| if (a.this?(id) == true) then puts a.name()
                           isPerson = true end }
    if (isPerson == false) then puts "Error; no student found" end
  end

  def average()
    total = 0
    @students.each { |a| total += a.grade() }
    puts total/@students.length
  end
end

listOfStudents = Students.new
listOfStudents.add("jerry", 19, 1, 90)
listOfStudents.add("terry", 17, 2, 80)
listOfStudents.add("berry", 18, 3, 70)
listOfStudents.find(2)
listOfStudents.find(7)
listOfStudents.average()
