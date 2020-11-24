//: [Previous](@previous)

import Foundation

class Solution {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var m:[Int : Int] = [:]
        for (idx, val) in nums.enumerated() {
            if let v = m[target - val] {
                return [v, idx]
            }
            m[val] = idx;
        }
        return []
    }
}

let nums = [2, 7, 11, 15]
let target = 9

let resultNums = Solution().twoSum(nums, target)

//: [Next](@next)
