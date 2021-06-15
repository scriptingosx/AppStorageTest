//
//  Manager.swift
//  AppStorageTest
//
//  Created by Armin Briegel on 2021-06-15.
//

import Foundation

class Manager {    
    func doSomething() {
        print("Hello, \(Prefs.name)")
        print("Volume is \(Prefs.volume)")
    }
}
