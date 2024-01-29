//
//  LogMiddleware.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 29/01/24.
//

import Foundation

func logMiddleware() -> Middleware<AppState> {

    return { state, action, dispatch in
        print("[LOG MIDDLEWARE]")
    }

}
