import Foundation

// 나의 풀이
/// 정수가 들어 있는 배열 num_list가 매개변수로 주어집니다. num_list의 원소의 순서를 거꾸로 뒤집은 배열을 return하도록 solution 함수를 완성해주세요.
/// - Parameter num_list: 정수 배열
/// - Returns: 뒤집힌 배열
func solution(_ num_list:[Int]) -> [Int] {
    var result: [Int] = []
    for index in 0..<num_list.count {
        result.append(num_list[num_list.count - (index + 1)])
    }
    
    return result
}

// 다른 사람 풀이
/// ```swift
/// // reversed() 메서드는 컬렉션(배열, 문자열, 시퀀스 등)의 요소를 역순으로 반환하는 기능을 제공
/// // reversed(): 새로운 역순 컬렉션을 반환. 원본 데이터를 변경 하지 않음
/// // reverse(): 원본 배열 자체를 역순으로 변경. 원본 데이터 자체를 바꿈
func other_solution(_ num_list: [Int]) -> [Int] {
    return num_list.reversed()
}

print(solution([1, 2, 3, 4, 5]))
print(solution([1, 1, 1, 1, 1, 2]))
print(solution([1, 0, 1, 1, 1, 3, 5]))
