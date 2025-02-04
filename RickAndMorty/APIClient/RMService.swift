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
    ///   - completion: callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
        
}
