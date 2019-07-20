import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var solution = [0, 0, 0]
    var supo1 = [1, 2, 3, 4, 5]
    var supo2 = [2, 1, 2, 3, 2, 4, 2, 5]
    var supo3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    for (index, answer) in answers.enumerated() {
        if (supo1[index % 5] == answer) {
            solution[0] += 1
        }
        if (supo2[index % 8] == answer) {
            solution[1] += 1
        }
        if (supo3[index % 10] == answer) {
            solution[2] += 1
        }
    }
    var result: [Int] = []
    for (index, score) in solution.enumerated() {
        if score == solution.max()! {
            result.append(index + 1)
        }
    }
    return result
}
