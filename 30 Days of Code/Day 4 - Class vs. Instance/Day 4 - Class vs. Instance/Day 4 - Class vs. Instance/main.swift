//
//  main.swift
//  Day 4 - Class vs. Instance
//
//  Created by Maksim Nosov on 06/04/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import Foundation

class Person {
    private var age: Int = 0
    
    public init(initialAge: Int) {
        if initialAge >= 0 {
            self.age = initialAge
        } else {
            self.age = 0
            print("Age is not valid, setting age to 0. ") }
    }
    
    public func amIOld() {
        switch age {
        case let x where x < 13:
            print("You are young.")
        case let x where ((x >= 13) && (x < 18)):
            print("You are a teenager.")
        default:
            print("You are old.")
        }
    }
    
    public func yearPasses() {
        self.age += 1
    }
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let age = Int(readLine()!)!
    let p = Person(initialAge: age)
    
    p.amIOld()
    
    for _ in 1...3 {
        p.yearPasses()
    }
    
    p.amIOld()
    
}
