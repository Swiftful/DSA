func pangrams(s: String) -> String {
    // Write your code here
    var ispangram = true

    for i in 65...90 {
        if !s.uppercased().contains(String(UnicodeScalar(i)!)){
            ispangram = false
            break;
        }
        if !ispangram{
            break;
        }
    }
    return ispangram ? "pangram" : "not pangram"
}