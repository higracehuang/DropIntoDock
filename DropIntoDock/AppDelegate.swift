//
//  AppDelegate.swift
//  DropIntoDock
//
//  Created by Le Huang on 11/14/23.
//

import Cocoa
import SwiftUI

extension Notification.Name {
  static let receivedURLsNotification = Notification.Name("ReceivedURLsNotification")
}

class AppDelegate: NSObject, NSApplicationDelegate {
  func application(_ application: NSApplication, open urls: [URL]) {
    guard !urls.isEmpty else { return }
    
    NotificationCenter.default.post(name: .receivedURLsNotification, object: nil, userInfo: ["URLs": urls])
  }
}
