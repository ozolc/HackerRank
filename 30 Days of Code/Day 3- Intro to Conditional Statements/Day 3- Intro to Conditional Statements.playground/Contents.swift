import Foundation

var str = "Day 3: Intro to Conditional Statements"

let N = 2
//    Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//    else { fatalError("Bad input") }

if (N % 2) != 0 {
    print("Weird")
} else if ((N % 2) == 0) && (2...5 ~= N)  {
    print("Not Weird")
} else if ((N % 2) == 0) && (6...20 ~= N)  {
    print("Weird")
} else if ((N % 2) == 0) && (N > 20)  {
    print("Not Weird")
}
