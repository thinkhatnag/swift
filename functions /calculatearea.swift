import Foundation

func Areacalculator(length: Double?, width: Double?){
    guard let length = length, let width = width else {
        print("Please enter valid values")
        return
    }
    let area = length * width
    print("Area  is \(area)")
}
