func solution(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    }
    
    var item: (index: Int, value: Int) = (0, arr[0])
    for (index, value) in arr.enumerated() {
        if value < item.value {
            item.value = value
            item.index = index
        }
    }
    var s = arr
    s.remove(at: item.index)
    return s
}
