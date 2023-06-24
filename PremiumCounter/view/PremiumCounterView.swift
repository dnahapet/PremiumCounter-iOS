//
//  PremiumCounterView.swift
//  PremiumCounter
//
//  Created by Davit Nahapetyan on 2023-05-22.
//

import SwiftUI

struct PremiumCounterView: View {
    @ObservedObject private var premiumCounterVM: PremiumCounterViewModel = PremiumCounterViewModel()

    var body: some View {
        VStack {
            Text(premiumCounterVM.isPremium ? "PREMIUM" : "")
                .foregroundColor(.green)
                .font(.largeTitle)
                .padding()
            Text("\(premiumCounterVM.value)")
                .font(.title)
                .padding()
            Button("Increment") {
                premiumCounterVM.increment()
            }
                .font(.title)
        }
    }
}

struct PremiumCounterView_Previews: PreviewProvider {
    static var previews: some View {
        PremiumCounterView()
    }
}
