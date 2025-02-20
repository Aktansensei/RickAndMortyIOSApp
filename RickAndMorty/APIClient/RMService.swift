//
//  RMService.swift
//  RickAndMorty
//
//  Created by Актан on 4/2/25.
//

import Foundation


/// Primary  API service object to get Rick and Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API
    /// - Parameters:
    ///   - request: request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ){
        
    }
        
}
