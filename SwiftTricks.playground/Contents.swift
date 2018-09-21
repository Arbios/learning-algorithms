// Learning Algorithms by Swift Algoritm Club by RayWenderlich
// Arbi Bashaev

// 1 Stack Data Structure
struct Stack {
  fileprivate var array: [String] = []
  
  
  mutating func push(_ element: String) {
    array.append(element)
  }
  
  
  mutating func pop() -> String? {
    return array.popLast()
  }
  
  func peek() -> String? {
    return array.last
  }
}


extension Stack: CustomStringConvertible {
  var description: String {
    let toDivider = "---Stack---\n"
    let bottomDivider = "\n-----------\n"
    
    let stackElements = array.reversed().joined(separator: "\n")
    
    return toDivider + stackElements + bottomDivider
  }
}

var myBookStack = Stack()

myBookStack.push("C++ language")
myBookStack.push("Rich dad, poor dad")
myBookStack.push("Hamlet")
myBookStack.push("SwiftBook")

print(myBookStack)




// 1.1 Linked List
public class Node {
  var value: String
  var next: Node?
  weak var previous: Node?
  
  init(value: String) {
    self.value = value
  }
}

public class LinkedList {
  
  fileprivate var head: Node?
  private var tail: Node?
  
  public var isEmpty: Bool {
    return head == nil
  }
  
  public var first: Node? {
    return head
  }
  
  public var last: Node? {
    return tail
  }
  
  public func append(value: String) {
    let newNode = Node(value: value)
    
    if let tailNode = tail {
      newNode.previous = tailNode
      tailNode.next = newNode
    } else {
      head = newNode
    }
    tail = newNode
  }
}


extension LinkedList: CustomStringConvertible {
  public var description: String {
    var text = "["
    var node = head
    while node != nil {
      text = text + "\(node!.value)"
      node = node!.next
      if node != nil {
        text = text + ", "
      }
    }
    return text + "]"
  }
}
let dogBreeds = LinkedList()
let ar = [2,5,7,8,0,9]
func sumOfArray(ar: [Int]) -> Int {
  var sum = 0
  for i in ar {
    sum = sum + i
  }
  
  return sum
}
dogBreeds.append(value: "Labrador")
dogBreeds.append(value: "Bulldog")
dogBreeds.append(value: "Beagle")
dogBreeds.append(value: "Husky")
print(dogBreeds)
// 2 Queue Data Structure
public struct Queue {
  
}



// 3 HackerRank - Task 2


var alice = [5,3,2]
var bob = [3,3,7]

func whoWin(a: [Int], b: [Int]) -> [Int] {
  var alice = 0
  var bob = 0
  
  if a.count - b.count == 0 && b.count - a.count == 0 {
    
    var count = 0
    for i in a {
      
      if i > b[count] {
        alice = alice + 1
      } else if i < b[count]{
        bob = bob + 1
      }
      count = count + 1
    }
  } else {
    print("Given arrays, has different count of elements")
  }
  
  
  return [alice,bob]
}


whoWin(a: alice, b: bob)


// 4 HackerRank  - Task 3 - Very big sum

// Complete the aVeryBigSum function below.
func aVeryBigSum(ar: [Int]) -> String {
  var sum: Int64 = 0
  
  for i in ar {
    sum = sum + Int64(i)
  }
  
  
  
  return String(sum)
}

aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005])


// 5 Skutarenko Inheritance Task - Cars



class Human {
  var weight: Int
  var age: Int
  
  init(weight: Int, age: Int) {
    self.weight = weight
    self.age = age
  }
  
  convenience init(age: Int) {
    self.init(weight: 0, age: age)
  }
  
  convenience init(weight: Int) {
    self.init(weight: weight, age: 0)
  }

  convenience init() {
    self.init(weight: 0)
  }
  
  func test() {
    
  }
}

let h1 = Human(weight: 70, age: 25)
let h2 = Human(weight: 0, age: 25)
let h3 = Human()

class Student: Human {
  var firstName: String
  var lastName: String
  
  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
    super.init(weight: 0, age: 0)
    self.weight = 50
    test()
  }
  
  convenience init(firstName: String) {
    self.init(firstName: firstName, lastName: "")
    self.age = 20
    test()
  }
  
}
let student = Student(firstName: "a")
student.age = 2



// 6 HackerRank - Task 4 - Diagonal difference


var matrixArrays = [[8, 14, 12], [36, 11, 2], [-16, 29, 84]]
var matrixLength = 3
func diagonalDifference(arr: [[Int]]) -> Int {

  var leftToRightSum: Int = 0
  var rightToLeftSum: Int = 0
  var positionR = 2
  var positionL = 0
  for array in arr {
    rightToLeftSum += array[positionR]
    print(rightToLeftSum)
    positionR -= 1
  }
  for array in arr {
    leftToRightSum += array[positionL]
    print(leftToRightSum)
    positionL += 1
  }
  
  
  return abs(leftToRightSum - rightToLeftSum) 
}
print("Sum is: \(diagonalDifference(arr: matrixArrays))")

