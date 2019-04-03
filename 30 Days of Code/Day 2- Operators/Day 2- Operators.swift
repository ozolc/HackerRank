import Foundation

// Complete the solve function below.
var meal_cost = 0.0
var tip_percent = 0
var tax_percent = 0

func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    let tip = meal_cost * (Double(tip_percent) / 100)
    let tax = meal_cost * (Double(tax_percent) / 100)
    let totalCost = meal_cost + tip + tax
    print(Int(totalCost.rounded()))
}

guard let meal_cost = Double((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let tip_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let tax_percent = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

solve(meal_cost: meal_cost, tip_percent: tip_percent, tax_percent: tax_percent)
