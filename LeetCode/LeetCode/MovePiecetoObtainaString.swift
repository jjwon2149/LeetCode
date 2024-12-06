//
//  MovePiecetoObtainaString.swift
//  LeetCode
//
//  Created by 정종원 on 12/5/24.
//

import Foundation

class MovePiecetoObtainaString {
    func canChange(_ start: String, _ target: String) -> Bool {
        
        let checkStart = start.replacingOccurrences(of: "[_]", with: "", options: .regularExpression)
        let checkTarget = target.replacingOccurrences(of: "[_]", with: "", options: .regularExpression)
        if checkStart != checkTarget {
            return false
        }
        
        let startPosition = start.enumerated().filter{ $0.element != "_"}
        let targetPosition = target.enumerated().filter{ $0.element != "_"}
        
        if startPosition.map({ $0.element }) != targetPosition.map({ $0.element }) {
            return false
        }
        
        for (startTuple, targetTuple) in zip(startPosition, targetPosition) {
            let (startIndex, char) = startTuple
            let (targetIndex, _) = targetTuple
            
            if char == "L" && startIndex < targetIndex {
                return false
            }
            if char == "R" && startIndex > targetIndex {
                return false
            }
        }
        
        return true
    }
}
