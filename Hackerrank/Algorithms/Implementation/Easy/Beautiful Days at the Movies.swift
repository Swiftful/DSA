//My Code
// func beautifulDays(i: Int, j: Int, k: Int) -> Int {
//     (i...j).filter { day in
//         let reversedDay = Int(String(String(day).reversed()))!
//         return abs(day - reversedDay) % k == 0
//     }.count
// }


//With ChatGpt optimization
func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var count = 0
    for day in i...j {
        if abs(day - reverseNumber(day)) % k == 0 {
            count += 1
        }
    }
    return count
}

func reverseNumber(_ number: Int) -> Int {
    var num = number
    var reversed = 0
    while num > 0 {
        reversed = reversed * 10 + num % 10
        num /= 10
    }
    return reversed
}