//
//  ApiError.swift
//  Food
//
//  Created by matvey on 28.03.2024.
//

import Foundation

enum ApiError: Error{
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
