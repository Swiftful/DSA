func hourglassSum(arr: [[Int]]) -> Int {
    // Write your code here  //
    var sum = 0
    var count = 0
    var sum_arr = Array(repeating: 0, count: 16)
    var (x1,x2,x3) = (0,3,2)

    for k in 1...4{
        for z in 1...4{
            sum_arr[count] += arr[k][z]
            count += 1
        }
    }
    count = 0
    for i in 0..<4{
        for _ in 0..<4{
            for x in x1..<x2{
                sum_arr[count] += arr[i][x]
            }
            
            for m in x1..<x2{
                sum_arr[count] += arr[x3][m]
            }
            
            x1 += 1
            x2 += 1
            count += 1
        }
        x1 = 0
        x2 = 3
        x3 += 1
    }
    
    
    if let sum1 = sum_arr.max(){
        sum = sum1
    }
    return sum
}