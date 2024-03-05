//
//  ContentView.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 20/01/24.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var store: Store<AppState>

    struct Props {
        let movies: [Movie]
        let onSearch: (String) -> Void
    }

    private func map(state: MoviesState) -> Props {
        Props(movies: state.movies, onSearch: { keyword in
            store.dispatch(action: FetchMovies(search: keyword))
        })
    }

    var body: some View {

        let props = map(state: store.state.movies)

        VStack {
            List(props.movies, id: \.imdbId) { movie in
                MovieCell(movie: movie)
            }.listStyle(PlainListStyle())
        }
        .navigationTitle("Movies")
        .embedInNavigationView()

        .onAppear(perform: {
            props.onSearch("Batman")
        })

    }
}

struct MovieCell: View {

    let movie: Movie

    var body: some View {
        HStack(alignment: .top) {
            URLImage(url: movie.poster)
                .frame(width: 100, height: 125)
                .cornerRadius(10)
            Text(movie.title)
        }
    }
}
