//import Foundation
////
////// addNumbers
////if let result = addNumbers(num1: 10, num2: 20) {
////    print("Sum:", result)
////}
////if let result = addNumbers(num1: nil, num2: 20) {
////    print("Sum:", result)
////}
////
//// greetUser
////print("Please enter your name:")
////let user = readLine()
////greetUser(name: user)
////
//
////
////// Area calculator
//////Areacalculator(length: 5, width: 10)  // Output: Area of rectangle is 50.0
//////Areacalculator(length: nil, width: 10)
////
////// Area calculator using readline
////print("Please enter length:")
////guard let length = readLine() else {
////    fatalError("Invalid input")
////}
////
////print("Please enter width:")
////guard let width = readLine() else {
////    fatalError("Invalid input")
////}
////Areacalculator(length: Double(length), width: Double(width))
//
//
//////swap Two Numbers
////swapTwoNumbers(a: 10, b: 20)
////
////print("Enter your first number:")
////guard let firstNumber = readLine() else {
////    fatalError("Invalid input")
////}
////print("Enter your second number:")
////
////guard let secondNumber = readLine() else {
////    fatalError("Invalid input")
////}
////
//
////Find Minimum and Maximum in a reear of numbers
////var numbers: [Int] = [10, 20,34, 53, 19, 18]
////
////   let result = minMax(numbers: numbers)
////   
////   if var minValue = result.min, var maxValue = result.max {
////       print("Minimum value: \(minValue)")
////       print("Maximum value: \(maxValue)")
////   } else {
////       print("The array is empty.")
////   }
//
////
////// sum of array of elements
////let numbers: [Int] = [1, 2, 3, 4, 5]
////print(sumOfarrayofElements(num: numbers))
////
////
////// Factorial of a number

print("Enter a number to find its factorial:")
guard let input = readLine(), let number = Int(input) else {
    fatalError("Invalid input")
}
let result = factorial(number)
print("Factorial of \(number) is \(result)")
