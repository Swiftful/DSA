func mostFrequentElements(_ array: [Int]) -> Int {
    var frequencyDict = [Int: Int]()
    
    for num in array {
        frequencyDict[num, default: 0] += 1
    }
    
    let maxFrequency = frequencyDict.values.max() ?? 0
    let mostFrequentNumbers = frequencyDict.filter { $0.value == maxFrequency }.map { $0.key }
    return mostFrequentNumbers[0]
}

func equalizeArray(arr: [Int]) -> Int {
    // Write your code here
    var new_arr = arr
    for i in 0..<arr.count{
        if arr[i] == mostFrequentElements(arr){
            new_arr.removeFirst()
        }
    }
    return new_arr.count
}