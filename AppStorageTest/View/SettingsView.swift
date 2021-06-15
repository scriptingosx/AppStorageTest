//
//  SettingsView.swift
//  AppStorageTest
//
//  Created by Armin Briegel on 2021-06-15.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage(Prefs.key(.name)) var name: String = ""
    @AppStorage(Prefs.key(.volume)) var volume: Double = 0.0
    
    let labelWidth = 60.0
    
    var body: some View {
        Form {
            VStack() {
                HStack {
                    Text("Name:").frame(width: labelWidth, alignment: .trailing)
                    TextField("Name", text: $name)
                }
                HStack {
                    Text("Volume:").frame(width: labelWidth, alignment: .trailing)
                    Slider(value: $volume, in: 0.0...11.0)
                    TextField("Volume", value: $volume, formatter: Prefs.volumeFormatter)
                    .frame(width:50)
                }
            }
            .padding()
        }
        .frame(width: 300.0, height: 200.0)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
