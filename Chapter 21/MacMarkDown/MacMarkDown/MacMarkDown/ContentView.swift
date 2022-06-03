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
        HSplitView {
            TextEditor(text: $document.text)
                .frame(minWidth: 200)
            WebView(html: document.html)
                .frame(minWidth: 200)
        }
        .frame(minWidth: 400, idealWidth: 600, maxWidth: .infinity,
               minHeight: 300, idealHeight: 400, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(MacMarkDownDocument()))
    }
}
