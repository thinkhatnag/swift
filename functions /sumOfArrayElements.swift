import Foundation

func sumOfarrayofElements(sum: [Int]?) -> Int {
    guard let numbers = sum, numbers.count > 0 else {
        print("Array of integers are epty  please fil the numbers")
        return (0)
    }
    return (numbers.reduce(0, +))
}
