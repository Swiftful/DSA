//
//  74) Search a 2D Matrix.swift
//  DSA
//


class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        return matrix.contains(where: { $0.contains(target) })
    }
}
