func solution(_ s:String) -> Bool {
    return (Int(s) ?? 0) != 0 && (s.count == 4 || s.count == 6)
}
