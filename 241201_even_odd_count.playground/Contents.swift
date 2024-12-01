import Foundation

/// 정수가 담긴 리스트 num_list가 주어질 때, num_list의 원소 중 짝수와 홀수의 개수를 담은 배열을 return 하도록 solution 함수를 완성해보세요.
/// - Parameter num_list: 정수 배열
/// - Returns: [짝수개수, 홀수개수]
func solution(_ num_list:[Int]) -> [Int] {
    var evenCount = 0
    var oddCount = 0
    
    num_list.forEach { number in
        if number % 2 == 0 {
            evenCount += 1
        } else {
            oddCount += 1
        }
    }
    return [evenCount, oddCount]
}

// 다른 사람 풀이
/// ``` swift
/// // filter는 컬렉션 또는 시퀀스에서 주어진 조건을 만족하는 요소만 걸러내는 고차함수
/// // 새로운 컬렉션을 반환
/// // 클로저는 true 또는 false를 반환하며, true인 경우 해당 요소가 필터링된 컬렉션에 포함
/// // 반환된 컬렉션은 원본과 같은 타입을 유지
/// let filteredCollection = collection.filter { condition }
/// // - collection: 필터링 대상이 되는 배열, 딕셔너리, 세트 등 컬렉션 또는 시퀀스.
/// // - condition: 각 요소에 대해 평가될 조건을 나타내는 클로저.
/// // - 결과 : 조건을 만족하는 요소들로 구성된 새로운 컬렉션.
func other_solution(_ num_list:[Int]) -> [Int] {
    var num_list = num_list
    let a = num_list.filter { $0 % 2 == 0 }.count
    
    return [a, num_list.count - a]
}

print(solution([1, 2, 3, 4, 5]))
print(solution([1, 3, 5, 7]))
