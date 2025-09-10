func twoStrings(s1: String, s2: String) -> String {
    // Write your code here
    var sum = "NO"
    let new_s2 = Set(s2)
    for i in s1{
        if new_s2.contains(i){
            sum = "YES"
            break
        }
    }
    return sum
}