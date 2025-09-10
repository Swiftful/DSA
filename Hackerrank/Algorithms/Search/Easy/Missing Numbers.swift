func missingNumbers(arr: [Int], brr: [Int]) -> [Int] {
    // Write your code here
    var sum = [Int]()
    let big = arr.count > brr.count ? arr.sorted() : brr.sorted()
    var min = arr.count < brr.count ? arr.sorted() : brr.sorted()
    for i in 0..<big.count{
        if big[i] != min[i]{
            min.insert(big[i], at: i)
            sum.append(big[i])
        }
    }
    return sum
}



func missingNumbers(arr: [Int], brr: [Int]) -> [Int] {
    // Write your code here
    var sum = [Int]()
    let dictA = arr.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    let dictB = brr.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    
    for (key, value) in dictB {
        if let countA = dictA[key] {
            if countA < value {
                sum.append(key)
            }
        } else {
            sum.append(key)
        }
    }
    return sum.sorted()
}