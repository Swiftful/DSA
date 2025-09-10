func funnyString(s: String) -> String {
    // Write your code here
    var arr = [Int]()
    var new_arr = arr
    for i in s.utf8{
        arr.append(Int(i))
    }
    for i in 0..<arr.count - 1{
        new_arr.append(abs(arr[i + 1] - arr[i]))
    }
    return new_arr == new_arr.reversed() ? "Funny" : "Not Funny"
}