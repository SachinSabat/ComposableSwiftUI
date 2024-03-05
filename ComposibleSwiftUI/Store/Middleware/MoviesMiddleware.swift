//
//  LogMiddleware.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 29/01/24.
//

import Foundation

import Foundation

func moviesMiddleware() -> Middleware<AppState> {

    return { state, action, dispatch in

        switch action {
            case let action as FetchMovies:
                Webservice().getMoviesBy(search: action.search.urlEncode()) { result in
                    switch result {
                        case .success(let movies):
                            if let movies = movies {
                                // set movies to the state
                                dispatch(SetMovies(movies: movies))
                            }
                        case .failure(let error):
                            print(error.localizedDescription)
                    }
                }
            default:
                break
            }

    }

}

