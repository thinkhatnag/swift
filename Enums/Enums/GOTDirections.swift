

import Foundation

enum Direction: String, CaseIterable {
    case north
    case south
    case east
    case west
}

func askForDirection() {
    while true {
        print("Enter the direction you want in this game GOT")
        
        guard let input = readLine()?.lowercased(), !input.isEmpty else {
            print("Please enter a valid direction.\n")
            continue
        }
    
        guard let direction = Direction(rawValue: input) else {
            print("Invalid direction. please enter the correct direction\n")
            continue
        }
        
        switch direction {
        case .north:
            print(" You are heading North — Starks’ homeland.\n")
        case .south:
            print("You are heading South — Dothraki plains.\n")
        case .east:
            print("You are heading East — the Gold Bank coast.\n")
        case .west:
            print("You are heading West — Unsullied territory.\n")
        }
    }
}
