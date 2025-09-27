//
//  704) Binary Search.swift
//  DSA
//

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1

        while low <= high{
            var mid = (low + high) / 2
            var midVal = nums[mid]

            if target == midVal{
                return mid
            }else if midVal < target{
                low = mid + 1
            }else{
                high = mid - 1
            }
        }
        return -1
    }
}
