import Foundation

func greetUser(name: String?) {
    // Check for nil or empty input
    if name == nil || name!.isEmpty {
        print("You didn't enter a name.")
        return
    }
    
    print("Hi \(name!), how is your Swift learning going?")
}


