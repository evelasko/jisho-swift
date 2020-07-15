//
//  Agent.swift
//  jisho
//
//  Created by Misfitcoders - Enrique Velasco on 08/07/2020.
//  Copyright © 2020 Misfitcoders - Enrique Velasco. All rights reserved.
//

import Foundation
import Combine

public class Agent {
    
    public init() { }
    
    /// Response<T> carries both parsed value and a URLResponse instance.
    /// The latter can be used for status code validation and logging
    public struct Response<T> {
        let value: T
        let response: URLResponse
    }
    
    public var cancellable: AnyCancellable?
    
    /// The run<T>() method is the single entry point for requests execution.
    /// It accepts a URLRequest instance that fully describes the request configuration.
    /// The decoder is optional in case custom JSON parsing is needed
    public func run<T: Decodable>(
        _ request: URLRequest,
        _ decoder: JSONDecoder = JSONDecoder()
    ) -> AnyPublisher<Response<T>, Error> {
        let task: AnyPublisher<Response<T>, Error> = URLSession
            .shared
            .dataTaskPublisher(for: request) /// Create data task as a Combine publisher.
            .tryMap { result -> Response<T> in
                let value = try decoder.decode(T.self, from: result.data) /// Parse JSON data.
                ///T is constrained to be Decodable in the run<T>() method declaration
                return Response(value: value, response: result.response) /// Create the Response<T> object and pass it downstream.
                ///It contains the parsed value and the URL response
            }
            .receive(on: DispatchQueue.main) /// Deliver values on the main thread
            .eraseToAnyPublisher() /// Erase publisher’s type and return an instance of AnyPublisher
        
        /// https://www.appsdissected.com/save-sink-assign-subscriber-anycancellable/
        self.cancellable = task
            .sink(receiveCompletion: { (status) in
                switch status {
                case .failure(let error):
                    print(error.localizedDescription)
                case .finished:
                    break
                }
            }, receiveValue: { (data) in
                print(data)
            })
        
        return task
    }
}
