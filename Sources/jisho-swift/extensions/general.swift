//
//  File.swift
//  
//
//  Created by Enrique Perez Velasco on 15/07/2020.
//

import Foundation

extension URLComponents {
    mutating func setQueryItems(
        with parameters: [String: String]
    ) {
        self.queryItems = parameters.map {
            URLQueryItem(
                name: $0.key,
                value: $0.value
            )
        }
    }
}

extension Int {
    func boundTo(_ min: Int, _ max: Int) -> Int {
        self < min ? min : self > max ? max : self
    }
}
