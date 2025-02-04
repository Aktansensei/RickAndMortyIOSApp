//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Актан on 4/2/25.
//

import Foundation

/// Represents unique API endpoint
@frozen
public enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
