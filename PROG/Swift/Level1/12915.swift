func solution(_ strings:[String], _ n:Int) -> [String] {
    let alphabets = strings.map { $0[$0.index($0.startIndex, offsetBy: n)] }
    var dict: [Character: [String]] = [:]
    for (index, alphabet) in alphabets.enumerated() {
        if dict.keys.filter ({ $0 == alphabet }).isEmpty {
            dict.updateValue([strings[index]], forKey: alphabet)
            continue
        }
        dict[alphabet]?.append(strings[index])
    }
    let array = dict.sorted { (a, b) -> Bool in
        return a.key < b.key
    }
    return array.flatMap { $0.value.sorted() }
}
