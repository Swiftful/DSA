func findMedian(arr: [Int]) -> Int {
    // Write your code here
    return arr.sorted()[(arr.count - 1) / 2]
}