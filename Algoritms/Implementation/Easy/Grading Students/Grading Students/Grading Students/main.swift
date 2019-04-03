//
//  main.swift
//  Grading Students
//
//  Created by Maksim Nosov on 03/04/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    var localArray = [Int]()
    
    for grade in grades {
        var outGrade = grade
        
        func multiply(i: Int) -> Int {
            while (i % 5 == 0) {
                return i
            }
            return multiply(i: i + 1)
        }
        
        switch grade {
        case 0..<38:
            localArray.append(grade)
        default:
            let localGrade = multiply(i: grade) - grade
            if localGrade < 3 {
                outGrade = multiply(i: grade)
            } else {
                outGrade = grade
            }
            localArray.append(outGrade)
        }
    }
    
    return localArray
}

print(gradingStudents(grades: [73, 67, 38, 33]))
