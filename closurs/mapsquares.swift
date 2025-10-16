import Foundation
let mapSquares: ([Int]) -> [Int] = { numbers in
    numbers.map { $0 * $0 }
}
