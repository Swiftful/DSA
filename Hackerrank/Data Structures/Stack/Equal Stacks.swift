func equalStacks(h1: [Int], h2: [Int], h3: [Int]) -> Int {
    // Write your code here    
    var sum:Int = 0
    var arrays = [h1,h2,h3]
    var array:[[Int]] = [[],[],[]]
    for i in 0..<3{
        for _ in 0..<arrays[i].count{
            for x in 
            array[i].append(arrays[i].reduce(0, +))
            arrays[i].removeFirst()
        }
    }
    for i in array[0]{
        if array[1].contains(i) && array[2].contains(i){
            sum = i
            break
        }
    }
    return sum
}