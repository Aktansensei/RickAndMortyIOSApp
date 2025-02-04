//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Актан on 4/2/25.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    // Base Url
    // Endpoint
    // Path components
    // Query parameters
    // "https://rickandmortyapi.com/api/character/1"
    
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint
    
    private let pathComponents: Set<String>
    
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for he api request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        if !queryParameters.isEmpty {
            string += "?"
            // ?name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    public init(endpoint: RMEndpoint,
                pathComponents: Set<String> = [],
                queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}
