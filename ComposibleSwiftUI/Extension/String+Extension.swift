//
//  String+Extension.swift
//  ComposibleSwiftUI
//
//  Created by Sachin Sabat on 19/02/24.
//

import Foundation

extension String {

    func urlEncode() -> String {
        self.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? self
    }

    func toInt() -> Int {
        let ratingDouble = Double(self) ?? 0.0
        return Int(ratingDouble.rounded())
    }

}
