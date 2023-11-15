//
//  ContentView.swift
//  DropIntoDock
//
//  Created by Le Huang on 11/14/23.
//

import SwiftUI

struct ContentView: View {
  @State private var receivedURLs: [URL] = []
  
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text(receivedURLs.map { $0.absoluteString }.joined(separator: "\n"))
    }
    .padding()
    .onReceive(NotificationCenter.default.publisher(for: .receivedURLsNotification)) { notification in
      if let urls = notification.userInfo?["URLs"] as? [URL] {
        receivedURLs = urls
      }
    }
  }
}

#Preview {
  ContentView()
}
