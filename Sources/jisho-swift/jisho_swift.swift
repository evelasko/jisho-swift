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
    
    static func proverbs() -> AnyPublisher<[JishoResult], Error> {
        /// Create a URLRequest instance, which describes the request.
        /// It doesn’t need any additional set up, since the HTTP method defaults to GET
        let request = URLRequest(url: urlJishoSearch_Proverbs)
        /// Agent executes the request and passes forward the repositories, skipping the response object.
        /// We skip response code validation to focus on the happy path
        return agent.run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
    
    static func getProverbs() throws -> AnyPublisher<JishoResult, Error> {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return URLSession.shared.dataTaskPublisher(for: urlJishoSearch_Proverbs)
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

