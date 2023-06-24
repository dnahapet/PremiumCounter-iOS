//
//  PremiumCounterViewModel.swift
//  PremiumCounter
//
//  Created by Davit Nahapetyan on 2023-05-22.
//

import Foundation
import SwiftUI

class PremiumCounterViewModel: ObservableObject {

    @Published private var premiumCounter: PremiumCounter = PremiumCounter()

    var value: Int {
        premiumCounter.value
    }

    var isPremium: Bool {
        premiumCounter.isPremium
    }

    func increment() {
        premiumCounter.increment()
    }
}
