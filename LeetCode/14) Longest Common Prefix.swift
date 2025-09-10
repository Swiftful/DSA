class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if !strs.dropFirst().allSatisfy({ $0.first == strs.first?.first }) { return "" }
        let shortStr = strs.sorted(by: { $0.count < $1.count }).first!
        
        var sum = ""
        var checkerStr = ""
        var strI = ""
        
        for i in shortStr{
            strI = String(i)
            checkerStr += strI
            if strs.allSatisfy({ $0.hasPrefix(checkerStr) }){
                sum += strI
            }else{
                break
            }
        }
        
        return sum
    }
}
