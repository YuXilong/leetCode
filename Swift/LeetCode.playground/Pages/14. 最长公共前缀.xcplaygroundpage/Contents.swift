//: [Previous](@previous)

import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if strs.count == 0 {
            return ""
        }
        let ann = strs.first!
        for an in ann.enumerated() {
            let c = Character(extendedGraphemeClusterLiteral: an.element)
            
            for i in 1 ..< strs.count {
                let str = strs[i]
                if an.offset >= str.count {
                    let index = ann.index(ann.startIndex, offsetBy: an.offset)
                    
                    return String(ann[ann.startIndex..<index])
                }
                let cc = str[str.index(str.startIndex, offsetBy: an.offset)]
                
                if an.offset == str.count || cc != c {
                    let index = ann.index(ann.startIndex, offsetBy: an.offset)
                    
                    return String(ann[ann.startIndex..<index])
                }
            }
        }
        return ann
    }
}

Solution().longestCommonPrefix(["flower","flow","flight"])
Solution().longestCommonPrefix(["ab","a"])

//: [Next](@next)
