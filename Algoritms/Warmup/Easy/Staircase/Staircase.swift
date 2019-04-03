import Foundation

var dash = 1
func staircase(n: Int) -> Void {
    var step = n
    guard n > 0 else { return }
    while (step - 1 > 0) {
        print(" ", terminator:"")
        step -= 1
    }
    for _ in 0..<dash {
        print("#", separator: " ", terminator:"")
    }
    dash += 1
    print()
    staircase(n: n - 1)
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

staircase(n: n)
