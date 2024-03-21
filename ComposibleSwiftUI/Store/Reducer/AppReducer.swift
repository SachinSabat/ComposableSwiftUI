//
//  AppReducer.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 28/01/24.
//

import Foundation

func appReducer(_ state: AppState, _ action: Action) -> AppState {

    var state = state
    state.restrooms = restroomsReducer(state.restrooms, action)
    return state
}


