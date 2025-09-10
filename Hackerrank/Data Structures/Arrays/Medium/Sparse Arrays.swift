func matchingStrings(stringList: [String], queries: [String]) -> [Int] {
    // Write your code here
    var count = 0
    var sum = [Int]()
    queries.forEach{ i in
        stringList.forEach{ j in
            count += i == j ? 1 : 0
        }
        sum.append(count)
        count = 0
    }
    return sum
}