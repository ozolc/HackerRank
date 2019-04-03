var i = 4
var d = 4.0
var s = "HackerRank "
// Declare second integer, double, and String variables.

// Read and save an integer, double, and String to your variables.

// Print the sum of both integer variables on a new line.

// Print the sum of the double variables on a new line.

// Concatenate and print the String variables on a new line
// The 's' variable above should be printed first.
var i2 = 0
var d2: Double = 0.0
var s2 = ""

i2 = Int(readLine() ?? "") ?? 0
i2 += i
d2 = Double(readLine() ?? "") ?? 0.0
d2 += d
s2 = readLine() ?? ""
s2 = s + s2

print(i2)
print(d2)
print(s2)