//
//  MaximumNumberofIntegerstoChooseFromaRange1.swift
//  LeetCode
//
//  Created by 정종원 on 12/6/24.
//

import Foundation

class MaximumNumberofIntegerstoChooseFromaRange1 {
    func maxCount(_ banned: [Int], _ n: Int, _ maxSum: Int) -> Int {
        var nArray: [Int] = Array(1...n) // [1, 2, 3, ... n]
        nArray = nArray.filter { !banned.contains($0) } // banned에 해당하는 요소 삭제
        
        var currentSum = 0
        var count = 0
        
        for nElement in nArray {
            if currentSum + nElement > maxSum {
                break
            }
            currentSum += nElement
            count += 1
        }
        
        return count
    }
}
