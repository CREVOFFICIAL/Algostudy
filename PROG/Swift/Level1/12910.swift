func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let filtered = arr.map { $0 }.filter { ($0 / divisor) > 0 && $0 % divisor == 0 }
    return filtered.isEmpty ? [-1] : filtered.sorted()
}
