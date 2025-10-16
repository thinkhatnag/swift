
import Foundation

func addNumbers(num1: Int?, num2: Int?) -> Int? {
    guard let n1 = num1, let n2 = num2 else {
        print("One of the numbers is nil")
        return nil
    }
    return n1 + n2
}





