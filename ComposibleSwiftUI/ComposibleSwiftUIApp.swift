//
//  ComposibleSwiftUIApp.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 20/01/24.
//

import SwiftUI

@main
struct ComposibleSwiftUIApp: App {

    var body: some Scene {

        let store = Store(reducer: appReducer, state: AppState(), middlewares: [restroomMiddleware()])

        WindowGroup {
            HomeScreen().environmentObject(store)
        }
    }
}

