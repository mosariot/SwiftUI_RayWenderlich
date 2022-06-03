//
//  WebView.swift
//  MacMarkDown
//
//  Created by Александр Воробьев on 03.06.2022.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    var html: String
    
    init(html: String) {
        self.html = html
    }
    
    func makeNSView(context: Context) -> some WKWebView {
        WKWebView()
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) {
        nsView.loadHTMLString(html, baseURL: Bundle.main.resourceURL)
    }
}
