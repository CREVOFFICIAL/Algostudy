import Foundation

func solution(_ s:String) -> Bool
{
    return s.lowercased().map { $0 }.filter { $0 == "p" }.count == s.lowercased().map { $0 }.filter { $0 == "y" }.count
}
