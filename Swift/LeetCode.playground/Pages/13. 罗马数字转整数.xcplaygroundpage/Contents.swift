//: [Previous](@previous)

import Foundation

class Solution {
    let dic = [
        "I" : 1,
        "V" : 5,
        "X" : 10,
        "L" : 50,
        "C" : 100,
        "D" : 500,
        "M" : 1000,
        "IV" : 4,
        "IX" : 9,
        "XL" : 40,
        "XC" : 90,
        "CD" : 400,
        "CM" : 900
    ]
    
    func romanToInt(_ s: String) -> Int {
        var num = 0
        for val in s.enumerated() {
            let n = dic[String(val.element)] ?? 0
            if val.offset + 1 < s.count {
                if let index = s.index(s.startIndex, offsetBy: val.offset + 1, limitedBy: s.endIndex) {
                    let next = String(s[index])
                    let nextN = dic[next] ?? 0
                    if nextN > n {
                        num = num - n
                        continue
                    }
                }
            }
            num = num + n
        }
        return num
    }
    
    func romanToInt2(_ s: String) -> Int {
        
        var ofsset = 0
        var num = 0
        
        while ofsset != s.count {
            let index = s.index(s.startIndex, offsetBy: ofsset, limitedBy: s.endIndex)
            if index == nil {
                break
            }
            
            let str = String(s[index!])
            
            if ofsset != s.count - 1 {
                let nextIndex = s.index(s.startIndex, offsetBy: ofsset + 1, limitedBy: s.endIndex)
                if nextIndex != nil {
                    let comStr = str + String(s[nextIndex!])
                    if let val = dic[comStr] {
                        num  = num + val
                        ofsset = ofsset + 2
                        continue
                    }
                }
            }
            num  = num + (dic[str] ?? 0)
            ofsset = ofsset + 1
        }
        return num
    }
}

Solution().romanToInt("MCMXCIV")
Solution().romanToInt("LVIII")
Solution().romanToInt("IX")
Solution().romanToInt("IV")
Solution().romanToInt("III")

//: [Next](@next)
