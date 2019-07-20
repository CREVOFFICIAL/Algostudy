import Foundation

func solution(_ n:Int64) -> Int64 {
    let number = sqrt(Double(n))
    return number - Double(Int(number)) == 0 ? Int64(pow(number + 1, 2)) : -1
}
