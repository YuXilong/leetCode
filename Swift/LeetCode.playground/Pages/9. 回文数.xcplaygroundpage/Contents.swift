//: [Previous](@previous)

import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        
        var xx = x
        var y = 0
        
        // 翻转数字
        while xx != 0 {
            y = y * 10 + xx % 10
            xx = xx / 10
        }
        return x == y
    }
    
    func isPalindrome2(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var str = String(x)
        str = String(str.reversed())
        return Int(str) == x
    }

}

Solution().isPalindrome(121)

//: [Next](@next)
