import Foundation

/// 첫 번째 분수의 분자와 분모를 뜻하는 numer1, denom1, 두 번째 분수의 분자와 분모를 뜻하는 numer2, denom2가 매개변수로 주어집니다. 두 분수를 더한 값을 기약 분수로 나타냈을 때 분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.
func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    var resultDenom: Int = denom1 * denom2
    var resultNumer: Int = (numer1 * denom2) + (numer2 * denom1)
    
    let divisor = gcd(resultNumer, resultDenom)
    
    return [resultNumer / divisor, resultDenom / divisor]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let remainder = a % b
        print(remainder)
        a = b
        b = remainder
    }
    return a
}

solution(1, 2, 3, 4)
solution(9, 2, 1, 3)
