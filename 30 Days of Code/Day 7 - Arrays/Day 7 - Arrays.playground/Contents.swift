import UIKit

var str = "Day 7 - Arrays"

let array = [1, 4, 3, 2]

func reverseOrder<T>(_ ar: [T]) {
    var i = ar.count
    while (i > 0) {
        print(ar[i - 1], terminator: " ")
        i -= 1
    }
}

reverseOrder(array)
