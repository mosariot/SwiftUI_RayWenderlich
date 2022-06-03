//
//  ContentView.swift
//  MacMarkDown
//
//  Created by Александр Воробьев on 03.06.2022.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: MacMarkDownDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(MacMarkDownDocument()))
    }
}
