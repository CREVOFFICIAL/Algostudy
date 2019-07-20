func solution(_ s:String, _ n:Int) -> String {
    var unicodes = s.map { UnicodeScalar(String($0))!.value }
    
    for (index, unicode) in unicodes.enumerated() {
        if unicode <= 90 && unicode >= 65 {
            if unicode + UInt32(n) > 90 {
                unicodes[index] = unicode + UInt32(n) - 26
            } else {
                unicodes[index] = unicode + UInt32(n)
            }
        } else if unicode <= 122 && unicode >= 97 {
            if unicode + UInt32(n) > 122 {
                unicodes[index] = unicode + UInt32(n) - 26
            } else {
                unicodes[index] = unicode + UInt32(n)
            }
        } else {
            unicodes[index] = 32
        }
    }
    return String(unicodes.map { UnicodeScalar($0)! }.map { Character($0) })
}
