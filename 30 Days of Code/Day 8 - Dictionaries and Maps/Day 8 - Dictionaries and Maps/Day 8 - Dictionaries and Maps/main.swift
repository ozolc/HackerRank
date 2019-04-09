//
//  main.swift
//  Day 8 - Dictionaries and Maps
//
//  Created by Maksim Nosov on 09/04/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import Foundation

let n = Int(readLine()!)!

var phoneBook: [String: String] = [:]

for _ in 0..<n {
    var contact = readLine()!.split(separator: " ").map(String.init)
    phoneBook[contact[0].lowercased()] = contact[1]
}

var queryName = readLine()

while queryName != nil {
    if let number = phoneBook[queryName!] {
        print("\(queryName!)=\(number)")
    }
    else {
        print("Not found")
    }
    
    queryName = readLine()
}
