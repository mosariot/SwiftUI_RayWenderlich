//
//  MacMarkDownApp.swift
//  MacMarkDown
//
//  Created by Александр Воробьев on 03.06.2022.
//

import SwiftUI

@main
struct MacMarkDownApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: MacMarkDownDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
