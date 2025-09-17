//
//  2206) Divide Array Into Equal Pairs.swift
//  DSA
//

class Solution {
    func divideArray(_ nums: [Int]) -> Bool {
        var dic = [Int: Int]()
        for i in nums{
            dic[i, default: 0] += 1
        }
        return dic.allSatisfy{ $0.value % 2 == 0 }
    }
}
