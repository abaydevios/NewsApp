//
//  APIError.swift
//  NewsApp (iOS)
//
//  Created by Shaikenov Abay on 11.03.2022.
//

import Foundation

enum APIError: Error {
    case DecodingError
    case errorCode(Int)
    case unknown
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .DecodingError:
            return "Failed to decode the object from service"
        case .errorCode(let code):
            return "\(code) - Something went wrong"
        case .unknown:
            return "The error is unknown"
        }
    }
}
