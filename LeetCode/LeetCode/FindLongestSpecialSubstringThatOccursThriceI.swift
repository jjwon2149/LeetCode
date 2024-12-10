//
//  FindLongestSpecialSubstringThatOccursThriceI.swift
//  LeetCode
//
//  Created by 정종원 on 12/10/24.
//

import Foundation

class FindLongestSpecialSubstringThatOccursThriceI {
    func maximumLength(_ s: String) -> Int {
        let n = s.count
        let chars = Array(s)
        var maxLength = -1
        
        for length in 1...n {
            var frequency: [String: Int] = [:]
            
            for i in 0...(n - length) {
                let substring = String(chars[i..<i+length])
                
                // 하나의 문자로만 이루어져 있는지 확인
                if Set(substring).count == 1 {
                    frequency[substring, default: 0] += 1
                }
            }
            
            // 3번 이상 등장하는 가장 긴 특수 부분 문자열
            if frequency.values.contains(where: { $0 >= 3 }) {
                maxLength = length
            }
        }
        
        return maxLength
    }
}
