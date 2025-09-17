//
//  349) Intersection of Two Arrays.swift
//  DSA
//

class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        for i in nums1.count > nums2.count ? nums1 : nums2{
            if nums1.contains(i) && nums2.contains(i) && !result.contains(i){
                result.append(i)
            }
        }
        return result
    }
}
