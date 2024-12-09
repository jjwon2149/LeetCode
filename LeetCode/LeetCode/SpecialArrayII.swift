//
//  SpecialArrayII.swift
//  LeetCode
//
//  Created by 정종원 on 12/9/24.
//

import Foundation

class SpecialArrayII {
    
    
    /*func isArraySpecial(_ nums: [Int], _ queries: [[Int]]) -> [Bool] {
        
        var result: [Bool] = []
        
        for query in queries {
            guard query.count == 2 else {
                result.append(false)
                continue
            }
            
            let from = query[0]
            let to = query[1]
            
            var isSpecial = true
            for i in from..<to {
                if (nums[i] % 2) == (nums[i + 1] % 2) {
                    isSpecial = false
                    break
                }
            }
            result.append(isSpecial)
        }
        return result
    }*/
    ///테스트케이스가 많아짐에 -> append를 사용, 2중 for문 으로 시간초과
    ///따라서 먼저 인접한 두 인덱스를 검사한후, Special확인을 완료한 배열을 만들어줌
    ///이후 from ~ to 까지의 조건 위반의 개수를 확인후 Bool타입의 result배열을 리턴
    
    func isArraySpecial(_ nums: [Int], _ queries: [[Int]]) -> [Bool] {
        
        var result = Array(repeating: false, count: queries.count)
        
        var isSpecialArray = Array(repeating: 0, count: nums.count)
        for i in 0 ..< nums.count - 1 {
            if (nums[i] % 2) == (nums[i + 1] % 2) {
                isSpecialArray[i] = 1 // 1이면 조건을 위반함.
            }
        }
        
        var prefixSum = Array(repeating: 0, count: nums.count)
        for i in 0 ..< nums.count - 1 {
            prefixSum[i + 1] = prefixSum[i] + isSpecialArray[i]
        }
        
        for (index, query) in queries.enumerated() {
            let from = query[0]
            let to = query[1]
            
            // 범위 내에서 위반 조건 개수 확인
            let violationCount = prefixSum[to] - prefixSum[from]
            result[index] = (violationCount == 0)
        }
        
        return result
    }
}
