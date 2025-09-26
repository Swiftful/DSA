//
//  35) Search Insert Position.swift
//  DSA
//

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if let num = nums.firstIndex(of: target){
            return num
        }
        
        for i in 0..<nums.count{
            if nums[i] < target && target < nums[i + 1]{
                return i + 1
            }else if nums[i] > target{
                return i
            }
        }
        return nums.count
    }
}
