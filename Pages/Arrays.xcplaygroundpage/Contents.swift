import UIKit

let arr = [1,2,3]

func secondLargest(arr: [Int]) -> Int {
    
    var largest = arr.first ?? -1000  // 1
    var secondLargest = arr.first ?? -1000  // 1
    
    for num in arr {
        if num > largest {
            secondLargest = largest
            largest = num
        } else if num > secondLargest {
            secondLargest = num
        }
    }
    
    return secondLargest
}

secondLargest(arr: arr)

func patternMatch(sentence: String, pattern: String) -> Bool {
    
    let array = sentence.components(separatedBy: " ")
    let patternArray = Array(pattern)
    var freqDict = [Character: String]()
    
    for index in 0..<patternArray.count {  // [e,f,e]
        let word = patternArray[index] // [e,f,e]
        if freqDict[word] == nil {
            freqDict[word] = array[index] // [e: apple]
        } else {
            if freqDict[word] != array[index] { //
                print("false")
                return false
            }
        }
    }
    return true
}

patternMatch(sentence: "apple banana apple", pattern: "ebe")

func getDiagonal(matrix: [[Int]]) -> Int {
    var sum = 0
    var otherSum = 0
    
    let count = matrix.count
    
    for index in 0..<count {
        sum += matrix[index][index]
        otherSum += matrix[index][count - index - 1]
    }
    
    return sum + otherSum
}
getDiagonal(matrix: [[1,2,9], [8,2,3], [4,5,6]])

func firstFiveEvenSums(arr: [Int]) -> Int {
    var evenArr = [Int]()
    
    evenArr = arr.filter {$0 % 2 == 0}
    
    var sum = 0
    
    for num in Array(evenArr[0...4]) {
        sum += num
    }
    
    return sum
}

firstFiveEvenSums(arr: [3,7,-3,2,9,4,8,10,3,9,4,9,8,6,-2])

func largestTwoMultiples(arr: [Int]) -> Int {
    
    var first = arr.first ?? 0
    var second = arr.first ?? 0
    
    for num in arr {
        if num > first {
            second = first
            first = num
        } else if num > second {
            second = num
        }
    }
    
    return first * second
    
}

largestTwoMultiples(arr: [1, 2, 7, 3, 9, 5])
