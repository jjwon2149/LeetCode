//
//  ContainerWithMostWater.swift
//  LeetCode
//
//  Created by 정종원 on 12/7/24.
//

import Foundation

class ContainerWithMostWater {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var resultArea = 0
        
        while left < right {
            let currentArea = min(height[left], height[right]) * (right - left)
            resultArea = max(resultArea, currentArea)
            
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return resultArea
    }
}
