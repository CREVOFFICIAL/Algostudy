import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    let numbers = commands.map { (command: [Int]) -> Int in
        let index = command[2] - 1
        let last = command[1] - 1
        let first = command[0] - 1
        let subArray = array[first...last].sorted()
        let findNumber = subArray[index]
        return findNumber
    }
    
    return numbers
}
