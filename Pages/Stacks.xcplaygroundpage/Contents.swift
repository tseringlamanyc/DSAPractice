import Foundation

struct Stack<T> {
   private var typeArr = [T]()

    public var peek: T? {
        return typeArr.last
    }
    public mutating func push(item: T) {
        typeArr.append(item)
    }
    public mutating func pop() -> T? {
        guard !typeArr.isEmpty else {
            return nil
        }
        return typeArr.removeLast()
    }
    var isEmpty: Bool {
        return typeArr.count == 0
    }
}


var stack = Stack<Int>()
stack.push(item: -100)
stack.push(item: -10)
stack.push(item: -20)
stack.push(item: 5)

print(stack)

//Problem One:
//Find the largest integer in a Stack of Ints
func largestElement(in stack: Stack<Int>) -> Int {
    guard !stack.isEmpty else { return -10000 }
    
    var stackCopy = stack
    
    guard var largestInt = stackCopy.pop() else {return -10000}
    
    while !stackCopy.isEmpty {
        guard let currentElement = stackCopy.pop() else {return -1000}
        if currentElement > largestInt {
            largestInt = currentElement
        }
    }
    return largestInt
}

largestElement(in: stack)

//Problem Two:
//Find the sum of a Stack of Ints
func sum(stack: Stack<Int>) -> Int {
    return 0
}

//Problem Three:
//Reverse a Stack without using an Array
//Sample input:
/*
 4
 2
 9
 3
 */

//Sample output:
/*
 3
 9
 2
 4
 */

func reverse<T>(stack: Stack<T>) -> Stack<T> {
    return Stack<T>()
}


//Problem Four:
//Determine if two stacks are equal
func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    return false
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack
func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    return Stack<T>()
}

//Problem Six:
//Determine if the parentheses are balanced in a given String
//Sample input: ((()))
//Sample output: true
//Sample input: ((())
//Sample output: false
//Sample input: (()((())()))
//Sample output: false

func isBalanced(str: String) -> Bool {
    return false
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary
func convertToBinary(_ num: Int) -> String {
    return ""
}
