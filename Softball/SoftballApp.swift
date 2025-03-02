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
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(TimerViewModel())
    }
    .modelContainer(for: TempusPlayer.self)
  }
}
