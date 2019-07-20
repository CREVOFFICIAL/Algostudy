func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var results: [[Int]] = []
    
    for (index, arr) in arr1.enumerated() {
        var result: [Int] = []
        for i in 0..<arr.count {
            result.append(arr1[index][i] + arr2[index][i])
        }
        results.append(result)
    }
    return results
}
