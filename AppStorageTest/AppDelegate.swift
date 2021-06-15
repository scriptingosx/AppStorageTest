//
//  AppDelegate.swift
//  AppStorageTest
//
//  Created by Armin Briegel on 2021-06-15.
//

import Foundation
import AppKit

@objc class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        print("applicationDidFinishLaunching")
        
        var prefs = [String: Any]()
        prefs[Prefs.Key.name.rawValue] = "Pippi Langstrumpf"
        prefs[Prefs.Key.volume.rawValue] = 5.0
        
        UserDefaults.standard.register(defaults: prefs)
    }
}
