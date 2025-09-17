//
//  9) Palindrome Number.swift
//  DSA
//

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }else{
            return String("\(x)".reversed()) == String(x)
        }
    }
}
