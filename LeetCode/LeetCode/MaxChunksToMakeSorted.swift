//
//  MaxChunksToMakeSorted.swift
//  LeetCode
//
//  Created by 정종원 on 12/19/24.
//

import Foundation

class MaxChunksToMakeSorted {
    func maxChunksToSorted(_ arr: [Int]) -> Int {
        if arr.count == 1 {
            return 1
        }
        
        var resultChunks = 0
        var currentMax = 0
        
        // 첫 번째 청크는 A[:k+1] == [0, 1, 2, ...k]에서 가장 작은 k로 찾을 수 있으며, 이 과정을 반복
        for (index, value) in arr.enumerated() {
            currentMax = max(currentMax, value)
            
            if currentMax == index {
                resultChunks += 1
            }
        }
        
        return resultChunks
    }
}
