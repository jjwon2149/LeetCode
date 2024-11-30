//
//  File.swift
//  LeetCode
//
//  Created by 정종원 on 11/30/24.
//

import Foundation

class TwoSum {
    // 내가 작성한 코드
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for (firstIndex, i) in nums.enumerated() {
            for (secondIndex, j) in nums.enumerated() {
                if j == target - i && firstIndex != secondIndex {
                    return [firstIndex, secondIndex]
                }
            }
        }
        return []
    }
    
    // LeetCode
    func twoSumLeetCode(_ nums: [Int], _ target: Int) -> [Int] {
        var elementosIterados = [Int: Int]() //valor:indice
        for (indice, valor) in nums.enumerated() {
            let complementar = target - valor
            if let indiceComplementar = elementosIterados[complementar] {
                return [indice, indiceComplementar]
            }
            elementosIterados[valor] = indice
        }
        return []
    }
}

