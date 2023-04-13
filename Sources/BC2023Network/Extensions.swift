//
//  File.swift
//  
//
//  Created by Julio César Fernández Muñoz on 17/3/23.
//

import Foundation

public extension URLSession {
    func dataRequest(from url:URL) async throws -> (Data, URLResponse) {
        do {
            return try await data(from: url)
        } catch {
            throw NetworkError.general(error)
        }
    }
    
    func dataRequest(for request:URLRequest) async throws -> (Data, URLResponse) {
        do {
            return try await data(for: request)
        } catch {
            throw NetworkError.general(error)
        }
    }
}

