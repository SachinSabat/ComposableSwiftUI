//
//  View+Extension.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 19/02/24.
//

import Foundation
import SwiftUI

extension View {

    func embedInNavigationView() -> some View {
        NavigationView { self }
    }

}
