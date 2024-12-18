//
//  FinalPricesWithaSpecialDiscountinShop.swift
//  LeetCode
//
//  Created by 정종원 on 12/18/24.
//

import Foundation

class FinalPricesWithaSpecialDiscountinShop {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var result: [Int] = []
        
        for (i, price) in prices.enumerated() {
            var discount = 0
            
            for j in (i + 1)..<prices.count {
                if prices[j] <= price {
                    discount = prices[j]
                    break
                }
            }
            
            result.append(price - discount)
        }
        
        return result
    }
}
