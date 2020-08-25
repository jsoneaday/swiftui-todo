//
//  Swift_TodoApp.swift
//  Shared
//
//  Created by David Choi on 8/21/20.
//

import SwiftUI

@main
struct Swift_TodoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Store())
        }
    }
}
