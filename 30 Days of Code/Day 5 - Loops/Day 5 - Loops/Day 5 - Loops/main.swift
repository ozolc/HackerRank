//
//  main.swift
//  Day 5 - Loops
//
//  Created by Maksim Nosov on 06/04/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

var pow = 1
while (pow >= 1 && pow <= 10 ) {
    let result = n * pow
    print("\(n) x \(pow) = \(result)")
    pow += 1
}
