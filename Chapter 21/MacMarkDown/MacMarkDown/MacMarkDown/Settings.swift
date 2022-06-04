//
//  Settings.swift
//  MacMarkDown
//
//  Created by Александр Воробьев on 04.06.2022.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("editorFontSize") var editorFontSize: Int = 14
    
    var body: some View {
        Stepper(value: $editorFontSize, in: 10...30) {
            Text("Font size: \(editorFontSize)")
        }
        .frame(width: 260, height: 80)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
