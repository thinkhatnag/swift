
import Foundation

// Closure to filter even numbers
let filterEvenNumbers: ([Int]) -> [Int] = { numbers in
    numbers.filter { $0 % 2 == 0 }
}
