import Foundation

// A variable
var number = 10

let myClosure: () -> Void = { [number] in
    print("Captured number is \(number)")
}

func getClosure() -> () -> Void {
    return myClosure
}

