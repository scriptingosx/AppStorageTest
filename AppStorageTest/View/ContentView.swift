//
//  ContentView.swift
//  AppStorageTest
//
//  Created by Armin Briegel on 2021-06-15.
//

import SwiftUI

struct ContentView: View {
    @AppStorage(Prefs.Key.name.rawValue) var name: String = ""
    @AppStorage(Prefs.Key.volume.rawValue) var volume: Double = 0.0
    @State var manager = Manager()
    var body: some View {
        VStack {
            Text("Hello, \(name)")
            ProgressView(value: volume, total: 10.0).padding()
            Button(action: manager.doSomething) {
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
