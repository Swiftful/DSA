//
//  66) Plus One .swift
//  DSA
//

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var odds = 1
        var temp = 0
        var i = digits.count - 1
        var array = [Int]()

        while i >= 0{
            temp = digits[i] + odds
            if temp >= 10{
                array.insert(temp - 10, at: 0)
                odds = 1
            }else{
                array.insert(temp, at: 0)
                odds = 0
            }
            i -= 1
        }
        if odds != 0{
            array.insert(odds, at: 0)
        }

        return array
    }
}
