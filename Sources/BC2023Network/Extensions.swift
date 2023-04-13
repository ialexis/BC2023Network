//
//  File.swift
//  
//
//  Created by Julio César Fernández Muñoz on 17/3/23.
//

import Foundation

public extension URLSession {
    func dataRequest(from:URL) async throws -> (Data, URLResponse) {
        do {
            return try await data(from: from)
        } catch {
            throw NetworkError.general(error)
        }
    }
}

