 import Foundation
func swapTwoNumbers(a:Double?, b:Double?) {
    guard var a = a, a > 0 ,
          var b = b, b > 0 else {
        print ("Please enter valid numbers")
        return
    }
    var temp : Double;
    temp = a;
    a = b;
    b = temp;
    print ("The swapped numbers are \(a) and \(b)")
    
}
