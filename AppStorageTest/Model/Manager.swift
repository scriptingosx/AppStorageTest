//
//  Manager.swift
//  AppStorageTest
//
//  Created by Armin Briegel on 2021-06-15.
//

import Foundation

class Manager {    
    var name: String {
        UserDefaults.standard.string(forKey: Prefs.key(.name)) ?? ""
    }
    
    var volume: Double {
        UserDefaults.standard.double(forKey: Prefs.key(.volume))
    }
    
    func doSomething() {
        print("Hello, \(name)")
        print("Volume is \(volume)")
    }
}
