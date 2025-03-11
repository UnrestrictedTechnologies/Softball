//
//  SoftballApp.swift
//  Softball
//
//  Created by Eric Forbes on 12/6/24.
//

import SwiftUI
import TempusKit
import SwiftData

@main
struct SoftballApp: App {
  @State var purchaseManager = PurchaseManager()
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(purchaseManager)
        .environment(TimerViewModel())
        .environment(\.appName, .softball)
        .preferredColorScheme(.dark)
        .dynamicTypeSize(DynamicTypeSize.xSmall...DynamicTypeSize.xLarge)
        .task {
          await purchaseManager.updatePurchasedProducts()
        }
    }
    .modelContainer(for: TempusPlayer.self)
  }
}
