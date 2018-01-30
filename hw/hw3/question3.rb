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

#collection of students
class Students
  def initialize
    @listOfStudents = Array[]
  end

  def add(name, age, id, grade)
    newStudent = Student.new
    newStudent.name=(name)
    newStudent.age=(age)
    newStudent.id=(id)
    newStudent.grade=(grade)
    @listOfStudents.push(newStudent)
  end

  def find(id)
    isPerson = false
    @listOfStudents.each { |a| if (a.this?(id) == true) then puts a.name()
                                 isPerson = true end }
    if (isPerson == false) then puts "Error; no student found" end
  end

  def average()
    total = 0
    @listOfStudents.each { |a| total += a.grade() }
    puts total/@listOfStudents.length
  end
end

listOfStudents = Students.new
listOfStudents.add("jerry", 19, 1, 90)
listOfStudents.add("terry", 18, 2, 80)
listOfStudents.add("berry", 17, 3, 70)
listOfStudents.add("joe", 20, 4, 54)
listOfStudents.add("boe", 21, 5, 29)
listOfStudents.add("poe", 68, 6, 100)
listOfStudents.find(2)
listOfStudents.find(6)
listOfStudents.find(60)
listOfStudents.average()
