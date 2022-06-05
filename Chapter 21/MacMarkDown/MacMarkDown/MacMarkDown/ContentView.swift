//
//  ContentView.swift
//  MacMarkDown
//
//  Created by Александр Воробьев on 03.06.2022.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: MacMarkDownDocument
    @AppStorage("editorFontSize") var editorFontSize: Int = 14
    @State private var previewState = PreviewState.web
    
    var body: some View {
        HSplitView {
            TextEditor(text: $document.text)
                .frame(minWidth: 200)
                .font(.system(size: CGFloat(editorFontSize)))
            if previewState == .web {
                WebView(html: document.html)
                    .frame(minWidth: 200)
            } else if previewState == .html {
                ScrollView {
                    Text(document.html)
                        .frame(minWidth: 200)
                        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .topLeading)
                        .padding()
                        .font(.system(size: CGFloat(editorFontSize)))
                        .textSelection(.enabled)
                }
            }
        }
        .frame(minWidth: 400, idealWidth: 600, maxWidth: .infinity,
               minHeight: 300, idealHeight: 400, maxHeight: .infinity)
        .toolbar {
            PreviewToolBarItem(previewState: $previewState)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(MacMarkDownDocument()))
    }
}
