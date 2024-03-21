//
//  Constants.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 12/02/24.
//

import Foundation

struct Constants {
    struct Urls {
        static func restroomsByLatAndLng(lat: Double, lng: Double) -> String {
            "https://www.refugerestrooms.org/api/v1/restrooms/by_location?lat=\(lat)&lng=\(lng)"
        }
    }
}
