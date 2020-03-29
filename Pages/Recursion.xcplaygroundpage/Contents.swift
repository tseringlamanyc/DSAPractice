import UIKit

func recurse(num: Int) {
    guard num > 0 else {return}
    print("hi")
    recurse(num: num - 1) // 6,5,4,3,2,1   // arguement
}

func countdownToZero (num: Int) {
    guard num >= 0 else {return}
    print(num)
    countdownToZero(num: num - 1)
}

recurse(num: 3)
countdownToZero(num: 3)

func recursiveFactorial(n: Int) -> Int {
    guard n > 1 else {return 1} //Base Case
    print(n)
    return n * recursiveFactorial(n: n - 1) //Recursive Call
}

recursiveFactorial(n: 4) // 4 * 3 * 2 , return 1

var fibDict = [Int: Int]()

func dynamicFib(num: Int) -> Int {
    if let fibResult = fibDict[num] {
        return fibResult
    }
    guard num > 2 else {
        return 1
    }
    let fibResult = dynamicFib(num: num - 1) + dynamicFib(num: num - 1)
    fibDict[num] = fibResult  // caches the results (memorization)
    return fibResult
}

func fibonacciOperation(num: Int) -> Int {
    // base case
    guard num > 2 else {return 1}
    return fibonacciOperation(num: num - 1) + fibonacciOperation(num: num - 2)
}

dynamicFib(num: 5)

// Tribonacci
var triDict = [Int: Int]()
func tribonacci(_ n: Int) -> Int {
    if let triResult = triDict[n] {
        return triResult
    }
    if n == 0 {
        return 0
    }
    guard n > 2 else {
        return 1
    }
    let triResult = tribonacci(n-1) + tribonacci(n-2) + tribonacci(n-3)
    triDict[n] = triResult
    return triResult
}

