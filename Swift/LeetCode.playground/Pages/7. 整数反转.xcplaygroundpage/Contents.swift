//: [Previous](@previous)

import Foundation

class Solution {
    
    func reverse(_ x: Int) -> Int {
        var xx = x
        var n = 0
        
        while xx != 0 {
            n = n * 10 + xx % 10
            xx = xx / 10
        }
        
        return n > Int32.max || n < Int32.min ? 0 : n
    }
}

Solution().reverse(-321)

//: [Next](@next)
