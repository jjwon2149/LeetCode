//
//  MaximumBeautyofanArrayAfterApplyingOperation.swift
//  LeetCode
//
//  Created by 정종원 on 12/11/24.
//

import Foundation

class MaximumBeautyofanArrayAfterApplyingOperation {
    func maximumBeauty(_ nums: [Int], _ k: Int) -> Int {
        let nums = nums.sorted()
        var maxBeauty = 0
        var left = 0
        
        for right in 0 ..< nums.count {
            while nums[right] - nums[left] > 2 * k {
                left += 1
            }
            maxBeauty = max(maxBeauty, right - left + 1)
        }
        
        return maxBeauty
    }
}
