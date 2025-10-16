import Foundation

func minMax(numbers: [Int]) -> (min: Int?, max: Int?) {
    guard !numbers.isEmpty else {
        return (nil, nil)
    }
    
    var minValue = numbers[0]
    var maxValue = numbers[0]
    
    for number in numbers {
        if number < minValue {
            minValue = number
        }
        if number > maxValue {
            maxValue = number
        }
    }
    
    return (minValue, maxValue)
}



