import Foundation

// Complete the birthdayCakeCandles function below.
func birthdayCakeCandles(ar: [Int]) -> Int {
let numMax = ar.reduce(Int.min, { max($0, $1) })
return ar.sorted(by: { $0 < $1} ).filter( { $0 == numMax} ).count
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let arCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arTemp = readLine() else { fatalError("Bad input") }
let ar: [Int] = arTemp.split(separator: " ").map {
    if let arItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arItem
    } else { fatalError("Bad input") }
}

guard ar.count == arCount else { fatalError("Bad input") }

let result = birthdayCakeCandles(ar: ar)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
