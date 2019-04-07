//
//  main.swift
//  Day 6 - Let's Review
//
//  Created by Maksim Nosov on 07/04/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import Foundation
import Darwin

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    
    var odd = ""
    var even = ""
    
    for (key, value) in string.enumerated() {
        key % 2 == 0 ? (even += String(value)) : (odd += String(value))
    }
    
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
    
    // Print the even-indexed characters
    // Write your code here
    
    print(even, terminator : "")
    
    // Print a space
    print(" ", terminator: "")
    
    // Print the odd-indexed characters
    // Write your code here
    
    print(odd, terminator : "")
    
    // Print a newline
    print()
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}

