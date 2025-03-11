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
  @Environment(\.appName) var appName
  var body: some View {
    TempusTabview()
  }
}

#Preview {
  ContentView()
    .environment(TimerViewModel())
}
