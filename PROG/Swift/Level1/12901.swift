func solution(_ a:Int, _ b:Int) -> String {
    let dayOfWeek = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    let monthOfDays = [5, 1, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]
    let first = (b + monthOfDays[a - 1] - 1) % 7
    
    return dayOfWeek[first]
}
