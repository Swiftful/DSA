//
//  Untitled.swift
//  DSA
//

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        let arr = Set(nums)
        nums = []
        for i in arr{
            nums.append(i)
        }
        nums.sort()
        return nums.count
    }
}
