func solution(_ phone_number:String) -> String {
    let afterIndex = phone_number.index(phone_number.startIndex, offsetBy: phone_number.count - 4)
    
    return "\(String(repeating: "*", count: phone_number.count - 4))\(phone_number[afterIndex..<phone_number.endIndex])"
}
