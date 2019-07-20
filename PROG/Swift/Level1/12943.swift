func solution(_ num:Int) -> Int {
    var number = num
    var count = 0
    
    while true {
        if number == 1 {
            return count
        } else if count >= 500 {
            return -1
        }
        
        if number % 2 == 0 {
            number = number / 2
        } else {
            number = number * 3 + 1
        }
        count += 1
    }
}
