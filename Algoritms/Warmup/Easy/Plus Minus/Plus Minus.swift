import Foundation

// Complete the plusMinus function below.
func plusMinus(arr: [Int]) -> Void {
    var arrayOfFraction = [Double]()
    var lesser = 0
    var equal = 0
    var greater = 0
    
    for i in arr {
        switch i {
        case ..<0:
            lesser += 1
        case 0:
            equal += 1
        default:
            greater += 1
        }
    }
    arrayOfFraction.append(Double(greater))    
    arrayOfFraction.append(Double(lesser))
    arrayOfFraction.append(Double(equal))
    
    for i in arrayOfFraction {
        print( String( format: "%.6f",(i /  Double(arr.count)) ) )
    }
    
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

plusMinus(arr: arr)
