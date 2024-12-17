import Foundation

// 나의 풀이
/// 점 네 개의 좌표를 담은 이차원 배열  dots가 다음과 같이 매개변수로 주어집니다. [[x1, y1], [x2, y2], [x3, y3], [x4, y4]] 주어진 네 개의 점을 두 개씩 이었을 때, 두 직선이 평행이 되는 경우가 있으면 1을 없으면 0을 return 하도록 solution 함수를 완성해보세요.
func solution(_ dots: [[Int]]) -> Int {
    let slope1 = calculateSlope(dots[0], dots[1])
    let slope2 = calculateSlope(dots[2], dots[3])
    
    let slope3 = calculateSlope(dots[0], dots[2])
    let slope4 = calculateSlope(dots[1], dots[3])
    
    let slope5 = calculateSlope(dots[0], dots[3])
    let slope6 = calculateSlope(dots[1], dots[2])
    
    if (slope1 == slope2) || (slope3 == slope4) || (slope5 == slope6) {
        return 1
    }
    
    return 0
}

func calculateSlope(_ a: [Int], _ b: [Int]) -> Double? {
    let deltaX = Double(b[0] - a[0])
    let deltaY = Double(b[1] - a[1])
    return deltaX == 0 ? nil : deltaY / deltaX
}

print(solution([[1, 4], [9, 2], [3, 8], [11, 6]]))
print(solution([[3, 5], [4, 1], [2, 4], [5, 10]]))
