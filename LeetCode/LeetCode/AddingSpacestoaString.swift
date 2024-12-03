//
//  AddingSpacestoaString.swift
//  LeetCode
//
//  Created by 정종원 on 12/3/24.
//

import Foundation

class AddingSpacestoaString {
    func addSpaces(_ s: String, _ spaces: [Int]) -> String {
        var result = ""
        var spacesIndex = 0
        for (sIndex,ch) in s.enumerated() {
            if spacesIndex < spaces.count,
               sIndex == spaces[spacesIndex] {
                result.append(" ")
                spacesIndex += 1
            }
            result.append(ch)
        }
        return result
    }
    

//    func addSpaces(_ s: String, _ spaces: [Int]) -> String {
//        var array = Array(s)
//        var count = 0
//        for i in spaces {
//            array.insert(" ", at: i + count)
//            count += 1
//        }
//        let result = array.map { String($0) }
//        return result.joined(separator: "")
//    }
    /* 위의 코드는 inset를 사용하여 배열 이동이 일어남. 따라서 배열의 크기가 커짐에 따라 insert의 연산이 느려짐. 따라서 테스트케이스에서 실패.*/
}
