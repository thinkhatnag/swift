import Foundation

print("SIMPLE CALCULATOR")
let operations = ["Addition", "Subtraction", "Multiplication", "Division"]

print("SIMPLE CALCULATOR")
for  operation in operations {
    print("\(operation)")
}

print("Enter the name of any one operation:")

let selection = readLine()?.lowercased()


print("Now enters any two numbers on which you want to perform the operation:")
print("Number 1: ")
let num1 = Double(readLine()!)!

print("Number 2: ")
let num2 = Double(readLine()!)!

var result : Double = 0.0 //

// switch statement to create a calculator
switch(selection){
    case "addition":
    result = num1 + num2
    print("Result =", result)
    
    case "subtraction":
    result = Double(num1 - num2)
    print("Result =", result)
    
    case "multiplication":
    result = Double(num1 * num2)
    print("Result =", result)
    
    case "division":
    if (num2 != 0){
        result = Double(num1 / num2)
        print("Result =", result)
    }else{
        print("Division with zero is not possible")
    }
    
    default:
    print("Invalid selection")
}
