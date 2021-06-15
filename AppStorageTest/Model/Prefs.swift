//
//  Prefs.swift
//  AppStorageTest
//
//  Created by Armin Briegel on 2021-06-15.
//

import Foundation


struct Prefs {
    
    let volumeFormatter: NumberFormatter = {
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

}
