func solution(_ x:Int) -> Bool {
    let number = String(x).reduce(0, { Int(String($0))! + Int(String($1))! })
    return x % number == 0
}
