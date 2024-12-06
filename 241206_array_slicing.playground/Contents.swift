import Foundation

// 나의 풀이
/// 정수 배열 numbers와 정수 num1, num2가 매개변수로 주어질 때, numbers의 num1번 째 인덱스부터 num2번째 인덱스까지 자른 정수 배열을 return 하도록 solution 함수를 완성해보세요.
func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    var result: [Int] = []
    for (index, number) in numbers.enumerated() {
        if index >= num1 && index <= num2 {
            result.append(number)
        }
    }
    return result
}

// 다른 사람 풀이
/// ```swift
/// // 슬라이싱 (Slicing): numbers 배열에서 num1부터 num2까지의 요소를 추출
/// let numbers = [10, 20, 30, 40, 50]
/// let arraySlice = numbers[1...3]  // 결과: [20, 30, 40] // ArraySlice는 원본 배열의 일부를 참조하며, 추가 메모리가 필요하지 않음.
/// let array = Array(numbers[1...3])  // 결과: [20, 30, 40] // Array(numbers[1...3])로 변환하면, 슬라이스된 데이터 크기만큼 새로운 메모리를 할당.
func ohter_solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    return Array(numbers[num1...num2])
}

print(solution([1, 2, 3, 4, 5], 1, 3))
print(solution([1, 3, 5], 1, 2))
