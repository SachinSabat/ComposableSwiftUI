//
//  Actions.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 21/03/24.
//

import Foundation

protocol Action { }

struct FetchRestroomsAction: Action {
    let latitude: Double
    let longitude: Double
}

struct SetRestroomsAction: Action {
    let restrooms: [Restroom]
}
