import Foundation

print("SIMPLE CALCULATOR")
let operations = ["Addition", "Subtraction", "Multiplication", "Division"]

print("SIMPLE CALCULATOR")
for  operation in operations {
    print("\(operation // interpollation
}

print("Enter the name of any one operation:")

let selection = readLine()?.lowercased()


print("Now enters any two numbers on which you want to perform the operation:")
print("Number 1: ")
print("Number 1: ")
guard let input1 = readLine(), let num1 = Double(input1) else {
    print("Invalid input for Number 1")
    exit(0) 
}

print("Number 2: ")
guard let input2 = readLine(), let num2 = Double(input2) else {
    print("Invalid input for Number 2")
    exit(0)
}

print("You entered:", num1, "and", num2)

var result : Double = 0.0 

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
