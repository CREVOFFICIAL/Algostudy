func solution(_ n:Int, _ m:Int) -> [Int] {
    var number = max(n, m)
    var divisor = min(n, m)
    
    while(number % divisor) != 0 {
        var remainder = number % divisor
        number = divisor
        divisor = remainder
    }
    
    return [divisor, n * m / divisor]
}
