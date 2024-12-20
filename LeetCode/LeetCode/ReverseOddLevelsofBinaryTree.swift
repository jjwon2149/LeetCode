//
//  ReverseOddLevelsofBinaryTree.swift
//  LeetCode
//
//  Created by 정종원 on 12/20/24.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}


// 1.트리를 레벨 순서로 순회
// 2.홀수 레벨은 노드 값을  reverse
// 3.reverse 값을 각 노드에 다시 할당

class ReverseOddLevelsofBinaryTree {
    func reverseOddLevels(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        var queue: [TreeNode] = [root]
        var level = 0
        
        while !queue.isEmpty {
            let levelSize = queue.count
            var levelNodes: [TreeNode] = []
            
            for _ in 0 ..< levelSize {
                let node = queue.removeFirst()
                levelNodes.append(node)
                if let left = node.left { queue.append(left) }
                if let right = node.right { queue.append(right)}
            }
            
            if level % 2 == 1 {
                let reversedVal = Array(levelNodes.map { $0.val }.reversed())
                for (index, node) in levelNodes.enumerated() {
                    node.val = reversedVal[index]
                }
            }
            level += 1
            
        }
        
        return root
    }
}
