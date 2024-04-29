//
//  File.swift
//  
//
//  Created by Julio César Fernández Muñoz on 13/4/23.
//

import Foundation

public enum NetworkError: Error {
    case general(Error)
    case status(Int)
    case json(Error)
    case dataNotValid
    case noHTTP
    case vapor(String, Int)
    case unknown
    case imageConversionFailed
    case encodingFailed
    case serverError
    
    public var description: String {
        switch self {
        case .general(let error):
            return "Error general: \(error.localizedDescription)"
        case .status(let int):
            return "Error de estado: \(int)"
        case .json(let error):
            return "Error en JSON: \(error)"
        case .dataNotValid:
            return "Datos no válidos"
        case .noHTTP:
            return "No es una respuesta HTTP"
        case .vapor(let reason, _):
            return "Error de Vapor: \(reason)"
        case .unknown:
            return "Error desconocido"
        case .imageConversionFailed:
            return "La conversión de la imagen falló"
        case .encodingFailed:
            return "La codificación de los datos falló"
        case .serverError:
            return "Error del servidor"
        }
    }
}
