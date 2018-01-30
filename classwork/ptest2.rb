#Question 4
def subPairs(pair1, pair2)
  value1 = pair1.fetch("a") - pair2.fetch("a")
  value2 = pair1.fetch("b") - pair2.fetch("b")
  newPair = {"a" => value1, "b" => value2}
  puts newPair
end
p1 = {"a" => 7, "b" => 5}
p2 = {"a" => 2, "b" => 4}
subPairs(p1, p2)
#Question 5
def addUp(list)
  total = 0
  list.each { |a| total += a }
  puts total
end

stuff = [1, 2, 3, 4]
addUp(stuff)
#Question 8
class Stack
  def initialize
    @stack = Array[]
  end
  
  def pop()
    @stack.pop
  end
  
  def top()
    @stack.last
  end

  def push(value)
    @stack.push(value)
  end
end

someStack = Stack.new()
someStack.push(1)
someStack.push(2)
someStack.push(3)
puts someStack.top()
x = 5 - someStack.pop()
puts x
puts someStack.top()
y = 4 - someStack.pop()
puts y
puts someStack.top()
