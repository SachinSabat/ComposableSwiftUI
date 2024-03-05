//
//  TaskReducer.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 28/01/24.
//

import Foundation

import Foundation

func moviesReducer(_ state: MoviesState, _ action: Action) -> MoviesState {
    var state = state

    switch action {
        case let action as SetMovies:
            state.movies = action.movies

        default:
            break
    }

    return state
}
