func dynamicArray(n: Int, queries: [[Int]]) -> [Int] {
    var seqList = [[Int]](repeating: [Int](), count: n)
    
    var lastAnswer = 0
    var result = [Int]()

    for query in queries {
        let queryType = query[0]
        let x = query[1]
        let y = query[2]
        
        let index = (x ^ lastAnswer) % n

        if queryType == 1 {
            seqList[index].append(y)
        } else if queryType == 2 {
            lastAnswer = seqList[index][y % seqList[index].count]
            result.append(lastAnswer)
        }
    }
    return result
}//With gpt