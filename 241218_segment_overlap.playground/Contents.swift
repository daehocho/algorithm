import Foundation

/// 선분 3개가 평행하게 놓여 있습니다. 세 선분의 시작과 끝 좌표가 [[start, end], [start, end], [start, end]] 형태로 들어있는 2차원 배열 lines가 매개변수로 주어질 때, 두 개 이상의 선분이 겹치는 부분의 길이를 return 하도록 solution 함수를 완성해보세요.
func solution(_ lines: [[Int]]) -> Int {
    // -100 ~ 100 좌표를 표현하기 위해 크기 201의 배열 생성
    var lineMap = Array(repeating: 0, count: 201)
    
    // 각 선분의 시작과 끝을 lineMap에 반영
    for line in lines {
        let start = line[0] + 100 // 음수 좌표를 처리하기 위해 +100
        let end = line[1] + 100   // 음수 좌표를 처리하기 위해 +100
        
        for i in start..<end {    // 끝 점 포함하지 않음
            lineMap[i] += 1       // 해당 구간에 1씩 추가
        }
    }
    
    return lineMap.filter { $0 > 1 }.count
}

//solution([[0, 1], [2, 5], [3, 9]])
//solution([[-1, 1], [1, 3], [3, 9]])
solution([[0, 5], [3, 9], [1, 10]])
