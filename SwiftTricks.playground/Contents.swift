// Learning Algorithms

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


// 2 Queue Data Structure
public struct Queue {
  
}


