func marsExploration(s: String) -> Int {
    // Write your code here
    var sum = 0
    var sos = [String]()
    for i in 0..<s.count{
        sos.append(String(Array(s)[i]))
        if (i + 1) % 3 == 0{
            sum += sos[0] != "S" ? 1 : 0
            sum += sos[1] != "O" ? 1 : 0
            sum += sos[2] != "S" ? 1 : 0
            sos = []
        }
    }
    return sum
}



//Gpt
func marsExploration(s: String) -> Int {
    let sosPattern = ["S", "O", "S"]
    var errors = 0

    for (index, char) in s.enumerated() {
        if char != Character(sosPattern[index % 3]) {
            errors += 1
        }
    }

    return errors
}