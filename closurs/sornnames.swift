import Foundation

let getSortedNames: ([String]) -> [String] = { names in
    names.sorted { $0 > $1 }
}
let getSortedNamesInReverse: ([String]) -> [String] = { names in
    names.sorted { $0 < $1 }
}

// Closure for reversing names
let getReversedNames: ([String]) -> [String] = { names in
    Array(names.reversed())
}

