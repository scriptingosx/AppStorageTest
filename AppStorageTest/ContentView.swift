//
//  ContentView.swift
//  AppStorageTest
//
//  Created by Armin Briegel on 2021-06-15.
//

import SwiftUI

struct ContentView: View {
    @AppStorage(Preferences.name.rawValue) var name: String = ""
    @AppStorage(Preferences.volume.rawValue) var volume: Double = 0.0
    
    var body: some View {
        VStack {
            Text("Hello, \(name)")
            ProgressView(value: volume, total: 10.0).padding()
            Button(action: Manager.shared.doSomething) {
                Text("Do Something")
            }.padding()
        }
        .frame(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
