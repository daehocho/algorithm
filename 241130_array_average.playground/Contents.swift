import UIKit

// 나의 풀이
/// 정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소의 평균값을 return하도록 solution 함수를 완성해주세요.
/// - Parameter numbers: 정수 배열
/// - Returns: 배열의 평균
func solution(_ numbers:[Int]) -> Double {
    var sum = 0.0
    numbers.forEach { number in
        sum += Double(number)
    }
    
    return sum/Double(numbers.count)
}

/// 다른 사람 풀이
/// ```swift
/// // reduce 연산자 : +, *, max, min 등
/// numbers.reduce(1, *) // 1부터 시작하여 모든 숫자를 곱함
/// numbers.reduce(0, +) // 0부터 시작하여 모든 숫자를 더함
/// numbers.reduce(Int.min) { max($0, $1) } // 최대값 구함
/// numbers.reduce(Int.max) { min($0, $1) } // 최대값 구함
/// strings.reduce("", +) // 문자열도 합칠 수 있음
/// // 배열을 딕셔너리로 변환
/// let names = ["Alice", "Bob", "Charlie"]
/// let nameLengths = names.reduce(into: [String: Int]()) { result, name in
///    result[name] = name.count
/// }
/// // 딕셔너리 값 합산
/// let scores = ["Alice": 50, "Bob": 70, "Charlie": 80]
/// let totalScore = scores.reduce(0) { $0 + $1.value }
/// // 2차원 배열 배열 평탄화
/// let nestedArray = [[1, 2], [3, 4], [5, 6]]
/// let flattenedArray = nestedArray.reduce([]) { $0 + $1 }
/// // 짝수만 더할 때
/// let numbers = [1, 2, 3, 4, 5, 6]
/// let evenSum = numbers.reduce(0) { $1 % 2 == 0 ? $0 + $1 : $0 }
///
func other_solution(_ numbers:[Int]) -> Double {
    // reduce는 Swift의 Sequence 프로토콜에 정의된 고차 함수로, 컬렉션(Array, Dictionary, Set 등)의 모든 요소를 결합하여 하나의 값으로 줄이는 데 사용
    return Double(numbers.reduce(0, +)) / Double(numbers.count)
}

print(other_solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
print(solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
print(solution([89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99]))
