//
//  Manager.swift
//  AppStorageTest
//
//  Created by Armin Briegel on 2021-06-15.
//

import Foundation

class Manager {    
    var name: String {
        UserDefaults.standard.string(forKey: Prefs.Key.name.rawValue) ?? ""
    }
    
    var volume: Double {
        UserDefaults.standard.double(forKey: Prefs.Key.volume.rawValue)
    }
    
    func doSomething() {
        print("Hello, \(name)")
        print("Volume is \(volume)")
    }
}
