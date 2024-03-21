//
//  RestroomsReducer.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 28/01/24.
//

import Foundation

func restroomsReducer(_ state: RestroomState, _ action: Action) -> RestroomState {
    var state = state

    switch action {
        case let action as SetRestroomsAction:
            state.restrooms = action.restrooms
        default:
            break
    }

    return state
}
