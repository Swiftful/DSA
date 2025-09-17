//
//  162) Find Peak Element.swift
//  DSA
//

class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        return nums.firstIndex(of: nums.max()!) ?? 0
    }
}
