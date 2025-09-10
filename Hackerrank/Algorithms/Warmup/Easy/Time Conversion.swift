func timeConversion(s: String) -> String {
    // Write your code here
    let dateformater = DateFormatter()
    dateformater.dateFormat = "hh:mm:ssa"
    if let convertingDate = dateformater.date(from: s){
        dateformater.dateFormat = "HH:mm:ss"
        return dateformater.string(from: convertingDate)
    }
    return ""
}