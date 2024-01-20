//
//  ComposibleSwiftUIApp.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 20/01/24.
//

import SwiftUI

@main
struct ComposibleSwiftUIApp: App {
    let store = Store(reducer: reducer)

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
