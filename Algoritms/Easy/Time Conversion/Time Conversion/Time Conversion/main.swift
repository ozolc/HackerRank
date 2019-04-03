//
//  main.swift
//  Time Conversion
//
//  Created by Maksim Nosov on 03/04/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import Foundation

func timeConversion(s: String) -> String {
    var out = s
    let start = s.startIndex;
    
    let hourIndex = s.index(start, offsetBy: 3)
    let minuteIndex = s.index(hourIndex, offsetBy: 2)
    let secondIndex = s.index(minuteIndex, offsetBy: 1)
    let dayIndex = s.index(start, offsetBy: 8)
    
    let hour = start..<s.index(before: hourIndex)
    let minute = hourIndex..<minuteIndex
    let second = secondIndex..<dayIndex
    
    let last = String(s.suffix(2))
    
    switch last {
    case "AM":
        if (s[hour] == "12") || (s[hour] == "00") {
            out = "00" + s.dropFirst(2)
        }
    case "PM":
        if let firstInt = Int(s[hour]) {
            if (firstInt != 12) {
                    out.replaceSubrange(start..<s.index(before: hourIndex), with: String(firstInt + 12))
                }
            }
    default:
        break
    }
    print(out)
    print(s[hour])
    print(s[minute])
    print(s[second])
    return String(out.dropLast(2))
}
let s = "12:05:45PM"

let result = timeConversion(s: s)
print(result)
