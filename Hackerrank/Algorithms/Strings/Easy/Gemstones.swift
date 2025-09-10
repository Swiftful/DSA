func gemstones(arr: [String]) -> Int {
    // Write your code here
    var (sum,count) = (0,0)
    var emptySet = Set<String>()
    for i in 0..<arr.count{
        arr[i].forEach{ number in
            emptySet.insert(String(number))
        }
    }
    emptySet.forEach{ i in
        arr.forEach{ j in 
            if j.contains(i){
                count += 1
            }
        }
        if count == arr.count{
            sum += 1
        }
        count = 0
    }
    return sum
}