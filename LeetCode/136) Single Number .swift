//
//  136) Single Number .swift
//  DSA
//

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var dic = [Int: Int]()
        for i in nums{
            dic[i, default: 0] += 1
        }
        return dic.min(by: { $0.value < $1.value })!.key
    }
}
