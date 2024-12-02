//
//  CheckIfaWordOccursAsaPrefixofAnyWordinaSentence.swift
//  LeetCode
//
//  Created by 정종원 on 12/2/24.
//

import Foundation

class CheckIfaWordOccursAsaPrefixofAnyWordinaSentence {
    func isPrefixOfWord(_ sentence: String, _ searchWord: String) -> Int {
        let sentenceArray = sentence.split(separator: " ")
        var result = 0
        for (index, i) in sentenceArray.enumerated() {
            if i.hasPrefix(searchWord) {
                return index + 1
            }
        }
        return -1
    }
}
