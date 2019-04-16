//
//  main.swift
//  Day 9 - Recursion 3
//
//  Created by Maksim Nosov on 16/04/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import Foundation

func factorial(n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n: n - 1)
    }
}

var result = factorial(n: 3)
print(result)

