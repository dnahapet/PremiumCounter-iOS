//
//  PremiumCounter.swift
//  PremiumCounter
//
//  Created by Davit Nahapetyan on 2023-05-22.
//

import Foundation

struct PremiumCounter {
    var value: Int
    var isPremium: Bool

    init() {
        self.value = 0
        self.isPremium = false
    }

    mutating func increment() {
        self.value += 1
        self.isPremium = self.value.isMultiple(of: 3)
    }
}
