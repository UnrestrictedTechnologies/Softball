//
//  ContentView.swift
//  Softball
//
//  Created by Eric Forbes on 12/6/24.
//

import SwiftUI
import TempusKit

struct ContentView: View {
  @Environment(\.modelContext) var modelContext
  var body: some View {
    TempusTabview(appName: .softball)
  }
}

#Preview {
  ContentView()
    .environment(TimerViewModel())
}
