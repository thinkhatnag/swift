import Foundation
func factorial(_ num: Int) -> Int {
    guard num >= 0 else {
        print ("Factorial is not defined for negative numbers")
        return 1
    }
    var result = 1
       for i in 1...num {
           result *= i
       }
    return result
}
