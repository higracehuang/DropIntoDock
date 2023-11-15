//
//  DropIntoDockApp.swift
//  DropIntoDock
//
//  Created by Le Huang on 11/14/23.
//

import SwiftUI

@main
struct DropIntoDockApp: App {
  @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
  var body: some Scene {
    if #available(macOS 13.0, *) {
      return Window("DropIntoDock", id: "main") {
        ContentView()
      }
    } else {
      return WindowGroup {
        ContentView()
      }
    }
  }
}
