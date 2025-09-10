func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    // Write your code here
    var arr:[Int:Int] = [Int:Int]()
    queries.forEach{ i in
        let (a,b,k) = (i[0],i[1],i[2])
        for j in a - 1..<b{
            arr[j, default: 0] += k
        }
    }
    return arr.values.max()!
}

//Optimization with chatGpt
func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    var arr = [Int](repeating: 0, count: n + 1)

    for query in queries {
        let a = query[0] - 1
        let b = query[1]
        let k = query[2]
        
        arr[a] += k
        if b < n {
            arr[b] -= k
        }
    }
    var maxVal = 0
    var currentSum = 0
    for value in arr {
        currentSum += value
        maxVal = max(maxVal, currentSum)
    }
    
    return maxVal
}
