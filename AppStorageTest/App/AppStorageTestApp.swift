//
//  AppStorageTestApp.swift
//  AppStorageTest
//
//  Created by Armin Briegel on 2021-06-15.
//

import SwiftUI

@main
struct AppStorageTestApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        Settings {
            SettingsView()
        }
    }
}
