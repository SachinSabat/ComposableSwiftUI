//
//  Constants.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 12/02/24.
//

import Foundation

struct Constants {

    struct ApiKeys {
        static let omdbIdKey = "564727f"
    }

    struct Urls {
        static func urlBySearch(search: String) -> String {
            "http://www.omdbapi.com/?s=\(search)&page=1&apikey=\(ApiKeys.omdbIdKey)"
        }

        static func urlForMovieDetailsByImdbId(imdbId: String) -> String {
            "http://www.omdbapi.com/?i=\(imdbId)&apikey=\(ApiKeys.omdbIdKey)"
        }
    }
}
