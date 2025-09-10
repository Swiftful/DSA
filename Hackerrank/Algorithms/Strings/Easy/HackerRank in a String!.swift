func hackerrankInString(s: String) -> String {
    var target = "hackerrank"
    for char in s where target.first == char { target.removeFirst() }
    return target.isEmpty ? "YES" : "NO"
}
I write with chatGPt