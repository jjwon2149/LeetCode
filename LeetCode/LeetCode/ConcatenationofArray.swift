//
//  1929.ConcatenationofArray.swift
//  LeetCode
//
//  Created by 정종원 on 12/1/24.
//

import Foundation

class ConcatenationofArray {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        let arr = nums + nums
        return arr
    }
}
