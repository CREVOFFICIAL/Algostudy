func solution(_ n:Int) -> Int {
    var arr = Array(repeating: 0, count: n + 1)
    
    for i in 2...n {
        arr[i] = 1
    }
    
    for i in 2...n {
        if arr[i] == 0 {
            continue
        }
        
        var j = i * 2
        while (j <= n) {
            arr[j] = 0
            j += i
        }
    }
    return arr.reduce(0, +)
}
