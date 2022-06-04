//
//  WebView.swift
//  MacMarkDown
//
//  Created by Александр Воробьев on 03.06.2022.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    @AppStorage("styleSheet") var styleSheet: StyleSheet = .raywenderlich
    var html: String
    var formattedHtml: String {
        """
          <html>
          <head>
             <link href="\(styleSheet).css" rel="stylesheet"
          </head>
          <body>
             \(html)
          </body>
          </html>
        """
    }
    
    init(html: String) {
        self.html = html
    }
    
    func makeNSView(context: Context) -> some WKWebView {
        WKWebView()
    }
    
    func updateNSView(_ nsView: NSViewType, context: Context) {
        nsView.loadHTMLString(formattedHtml, baseURL: Bundle.main.resourceURL)
    }
}
