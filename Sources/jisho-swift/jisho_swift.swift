//  jisho
//
//  Created by Misfitcoders - Enrique Velasco on 08/07/2020.
//  Copyright © 2020 Misfitcoders - Enrique Velasco. All rights reserved.
//

import Foundation
import Combine

public enum Jisho {
    public static let agent = Agent()
}

//MARK: - Combine Framework Implementation
public extension Jisho {
        
    /// Search Jisho for a particular word term
    static func searchFor(term: JishoSearchTerm, page: Int?) throws -> AnyPublisher<JishoResult, Error> {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return URLSession
            .shared
            .dataTaskPublisher(
                for: getURLJishoSearchFor(
                    term.rawValue,
                    page
                )
            )
            .map { $0.data }
            .decode(type: JishoResult.self, decoder: decoder)
            .eraseToAnyPublisher()
    }
    
    /// Search for Kanji in JLPT Level (1-5)
    static func searchFor(JLPTLevel level: Int, page: Int?) throws -> AnyPublisher<JishoResult, Error> {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return URLSession
            .shared
            .dataTaskPublisher(
                for: getURLJishoSearchFor(
                    "#jlpt-n\(level.boundTo(1, 5))",
                    page
                )
            )
            .map { $0.data }
            .decode(type: JishoResult.self, decoder: decoder)
            .eraseToAnyPublisher()
    }
    
    /// Fecth Wanikani words by level (1-60)
    static func searchFor(wanikaniLevel level: Int, page: Int?) throws -> AnyPublisher<JishoResult, Error> {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return URLSession
            .shared
            .dataTaskPublisher(for:
                getURLJishoSearchFor(
                    "#wanikani\(level.boundTo(1, 60))",
                    page
                )
            )
            .map { $0.data }
            .decode(type: JishoResult.self, decoder: decoder)
            .eraseToAnyPublisher()
    }
    
    
    
    /// Retrieve the furigana entries for this slug
    static func getFurigana(forJishoEntry entry: JishoEntry) throws -> AnyPublisher<JishoFuriganaEntry, Error> {
        let url = urlGetFuriganaForSlug(entry.slug)
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [FuriganaEntry].self, decoder: JSONDecoder())
            .map { JishoFuriganaEntry(jisho: entry, furigana: $0) }
            .eraseToAnyPublisher()
    }
}

