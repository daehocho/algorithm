import Foundation

/// 머쓱이네 양꼬치 가게는 10인분을 먹으면 음료수 하나를 서비스로 줍니다. 양꼬치는 1인분에 12,000원, 음료수는 2,000원입니다. 정수 n과 k가 매개변수로 주어졌을 때, 양꼬치 n인분과 음료수 k개를 먹었다면 총얼마를 지불해야 하는지 return 하도록 solution 함수를 완성해보세요.
/// - Parameters:
///   - n: 양갈비 갯수
///   - k: 음료수 갯수
/// - Returns: 총 가격
func solution(_ n:Int, _ k:Int) -> Int {
    let lambPrice = 12000
    let drinkPrice = 2000
    let lambResult = n * lambPrice
    let drinkService = n / 10
    let drinkResult = (k - drinkService) * 2000
    
    return lambResult + drinkResult
}

print(solution(10, 3))
print(solution(64, 6))
