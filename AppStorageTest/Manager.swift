//
//  Manager.swift
//  AppStorageTest
//
//  Created by Armin Briegel on 2021-06-15.
//

import Foundation

class Manager {
    static let shared = Manager()
    
    var name: String {
        UserDefaults.standard.string(forKey: Preferences.name.rawValue) ?? ""
    }
    
    var volume: Double {
        UserDefaults.standard.double(forKey: Preferences.volume.rawValue)
    }
    
    func doSomething() {
        print("Hello, \(name)")
        print("Volume is \(volume)")
    }
}
