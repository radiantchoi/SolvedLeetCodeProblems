class Solution {
    func camelMatch(_ queries: [String], _ pattern: String) -> [Bool] {
        var result = [Bool]()
        
        // 패턴을 분리한다 - 대문자로 시작하고, 소문자는 어디에 들어가도 상관없다.
        let patterns = splitPattern(pattern)
        
        for query in queries {
            // 쿼리도 케이스별로 분리한다
            let queryCases = splitPattern(query)
            
            // 패턴의 수와 케이스의 수가 맞지 않으면 false
            if patterns.count != queryCases.count {
                result.append(false)
                continue
            }
            
            // 시작하는 글자가 같지 않으면 false
            // 정해진 수만큼 글자가 포함되어 있지 않으면 false
            // 모든 조건을 만족했을 때 true
            
            var isFit = true
            
            for i in 0..<queryCases.count {
                let queryCase = queryCases[i]
                let pat = patterns[i]
                
                if queryCase.0 != pat.0 {
                    isFit = false
                }
                
                if !pat.1.isEmpty {
                    let patternOccurences = countOccurences(pat.1)
                    let caseOccurences = countOccurences(queryCase.1)
                    
                    for letter in patternOccurences.keys {
                        if !caseOccurences.keys.contains(letter) {
                            isFit = false
                        } else {
                            let po = patternOccurences[letter]!
                            let co = caseOccurences[letter]!
                        
                            if po > co {
                                isFit = false
                            }
                        }
                    }
                }
            }
            
            result.append(isFit)
        }
        
        return result
    }
    
    func splitPattern(_ s: String) -> [(String, String)] {
        var result: [(String, String)] = []
        var starting = ""
        var including = ""
        
        let spread = Array(s)
        
        for letter in spread {
            if letter.isUppercase && !starting.isEmpty {
                result.append((String(starting), String(including)))
                starting = String(letter)
                including = ""
            } else if letter.isUppercase && starting.isEmpty {
                starting = String(letter)
            } else {
                including += String(letter)
            }
        }
        
        result.append((String(starting), String(including)))
        
        return result
    }
    
    func countOccurences(_ s: String) -> [String: Int] {
        let spread = s.map { String($0) }
        var result: [String: Int] = [:]
        
        for letter in spread {
            if result[letter] != nil {
                result[letter]! += 1
            } else {
                result[letter] = 1
            }
        }
        
        return result
    }
}