func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    print("\(arr.sorted().reduce(0,+) - arr.max()!) \(arr.sorted().reduce(0,+) - arr.min()!)")
}