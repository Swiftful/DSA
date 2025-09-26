//
//  217) Contains Duplicate.swift
//  DSA
//

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let set = Set(nums)
        return set.count == nums.count ? false : true
    }
}
