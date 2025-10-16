import Foundation

func greetUser(name: String?) {
    // Use guard to safely unwrap the optional
    guard let name = name, !name.isEmpty else {
        print("You didn't enter a name.")
        return
    }
    
    print("Hi \(name), how is your Swift learning going?")
}

print("Please enter your name:")
if let user = readLine() {
    greetUser(name: user)
}
