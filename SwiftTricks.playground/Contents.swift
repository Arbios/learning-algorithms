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


