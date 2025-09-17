//
//  3110) Score of a String.swift
//  DSA
//

class Solution {
    func scoreOfString(_ s: String) -> Int{
        var result = 0
        let asciiArray = s.map{ $0.asciiValue! }
        
        for i in 0..<asciiArray.count - 1{
            result += abs(Int(asciiArray[i]) - Int(asciiArray[i + 1]))
        }
        return result
    }
}
