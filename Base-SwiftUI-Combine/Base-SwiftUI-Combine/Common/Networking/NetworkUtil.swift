//
//  NetworkUtil.swift
//  SwiftUI-Combine-MVVM-Coordinator
//
//  Created by NL on 12/09/2021.
//

import Foundation
import Combine
enum NetWorkError: Error {
    case invalidInput
    case invalidJson
    case invalidURL
    case other(Error)
}

extension AnyPublisher where Output == Data, Failure == Error {
    func jsonObject() -> AnyPublisher<[String: Any], Failure> {
        tryMap { data ->[String: Any] in
            if let jsonObject = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                return jsonObject
            }
            throw(NetWorkError.invalidJson)
        }
        .eraseToAnyPublisher()
    }
    
    func jsonArrayObject() -> AnyPublisher<[[String: Any]], Failure> {
        tryMap { data ->[[String: Any]] in
            if let jsonObject = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] {
                return jsonObject
            }
            throw(NetWorkError.invalidJson)
        }
        .eraseToAnyPublisher()
    }
    
    func decode<T: Decodable>(jsonDecoder: JSONDecoder = JSONDecoder()) -> AnyPublisher<T, Failure> {
        tryMap { data -> T in
            return try jsonDecoder.decode(T.self, from: data)
        }.eraseToAnyPublisher()
        
    }
}
