import Foundation

// 나의 풀이
/// 문자열 배열 strlist가 매개변수로 주어집니다. strlist 각 원소의 길이를 담은 배열을 return하도록 solution 함수를 완성해주세요.
func solution(_ strlist:[String]) -> [Int] {
    var result: [Int] = []
    strlist.forEach { text in
        result.append(text.count)
    }
    strlist.map({ print($0.count) })
    return result
}

// 다른 사람 풀이
/// ```swift
/// // map은 컬렉션(Array, Set, Dictionary)의 각 요소를 변환하여 새로운 배열 또는 컬렉션을 생성하는 고차 함수
/// // 중첩된 배열도 순회 가능
/// let nestedArray = [[1, 2], [3, 4]]
/// let flattened = nestedArray.map { $0.map { $0 * 2 } }
/// print(flattened) // [[2, 4], [6, 8]]
func other_solution(_ strlist:[String]) -> [Int] {
    return strlist.map({ $0.count })
}

print(solution(["We", "are", "the", "world!"]))
print(solution(["I", "Love", "Programmers."]))
