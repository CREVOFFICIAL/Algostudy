import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let sorted = d.sorted()
    var sum = 0
    var count = 0
    
    for item in sorted {
        if sum + item <= budget {
            sum += item
            count += 1
        }
    }
    
    return count
}
