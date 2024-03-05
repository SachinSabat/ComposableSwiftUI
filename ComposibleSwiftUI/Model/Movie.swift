//
//  Task.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 28/01/24.
//


import Foundation

struct MovieResponse: Decodable {
    let movies: [Movie]

    private enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
}


struct Movie: Decodable {
    let title: String
    let poster: String
    let imdbId: String

    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case poster = "Poster"
        case imdbId = "imdbID"
    }

}
