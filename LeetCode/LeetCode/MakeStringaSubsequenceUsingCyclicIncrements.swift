//
//  Make String a Subsequence Using Cyclic Increments.swift
//  LeetCode
//
//  Created by 정종원 on 12/4/24.
//

import Foundation

class MakeStringaSubsequenceUsingCyclicIncrements {
    func canMakeSubsequence(_ str1: String, _ str2: String) -> Bool {
        var arr1 = Array(str1)
        var arr2 = Array(str2)
        var j = 0
        
        for i in arr1.indices {
            if arr1[i] == arr2[j] {
                j += 1
            } else {
                arr1[i] = arr1[i] == "z" ? "a" : Character(UnicodeScalar(arr1[i].asciiValue! + 1))
                if arr1[i] == arr2[j] {
                    j += 1
                }
            }
        }
        
        return j == arr2.count
    }
}
