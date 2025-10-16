func processNumbers(_ numbers: [Int], using operation: (Int) -> Int) -> [Int] {
    return numbers.map { operation($0) } // applies the closure to each element
}
