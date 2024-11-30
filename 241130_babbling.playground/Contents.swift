import Foundation

func solution(_ babbling: [String]) -> Int {
    let validWords = ["aya", "ye", "woo", "ma"] // 발음 가능한 단어들을 정의
    var count = 0 // 발음 가능한 단어의 개수를 저장할 변수 초기화
    
    for word in babbling { // 입력된 단어 배열을 하나씩 순회
        var tempWord = word // 현재 단어를 임시 변수에 저장하여 수정 작업 수행
        var previousWord = "" // 이전에 매칭된 단어를 저장하여 중복 방지
        
        while !tempWord.isEmpty { // tempWord가 비어 있지 않은 동안 반복
            var found = false // 현재 루프에서 유효한 단어를 찾았는지 여부
            
            for validWord in validWords { // 유효한 단어 배열을 순회
                if tempWord.hasPrefix(validWord) { // tempWord가 validWord로 시작하는지 확인
                    if previousWord == validWord { // 이전 단어와 같다면 연속 중복이므로 무효화
                        found = false
                        break // 더 이상 검사하지 않고 루프 종료
                    }
                    
                    tempWord.removeFirst(validWord.count) // tempWord에서 유효한 단어 제거
                    previousWord = validWord // 현재 단어를 이전 단어로 갱신
                    found = true // 유효한 단어를 찾았음을 표시
                    break // 현재 단어에서 더 이상 검사하지 않음
                }
            }
            
            if !found { // 유효한 단어를 찾지 못했다면 루프 종료
                break
            }
        }
        
        if tempWord.isEmpty { // tempWord가 완전히 비어 있다면 발음 가능한 단어로 간주
            count += 1 // 발음 가능한 단어 수 증가
        }
    }
    
    return count // 최종적으로 발음 가능한 단어의 총 개수를 반환
}

print(solution(["aya", "yee", "u", "maa", "wyeoo"]))
print(solution(["ayaye", "uuuma", "ye", "yemawoo", "ayaa"]))
