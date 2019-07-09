func solution(_ n:Int) -> String {
    return (0..<n).map { String(Array("수박")[$0 % 2]) }.joined()
}
