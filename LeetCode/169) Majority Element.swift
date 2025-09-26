//
//  169) Majority Element.swift
//  DSA
//

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()

        for i in nums{
            dict[i, default: 0] += 1
            if dict[i]! > nums.count / 2 {
                return i
            }
        }
        return -1
    }
}
