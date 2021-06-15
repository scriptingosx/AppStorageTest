//
//  Prefs.swift
//  AppStorageTest
//
//  Created by Armin Briegel on 2021-06-15.
//

import Foundation


struct Prefs {
    
    static let volumeFormatter: NumberFormatter = {
        var fmt = NumberFormatter()
        fmt.numberStyle = .decimal
        fmt.minimumFractionDigits = 1
        fmt.maximumFractionDigits = 1
        fmt.alwaysShowsDecimalSeparator = true
        return fmt
    }()

    enum Key: String {
        case name
        case volume
    }
    
    static func key(_ key: Key) -> String {
        return key.rawValue
    }
    
    static func registerDefaults() {
        var prefs = [String: Any]()
        prefs[Prefs.key(.name)] = "Pippi Langstrumpf"
        prefs[Prefs.key(.volume)] = 5.0
        
        UserDefaults.standard.register(defaults: prefs)
    }

}
