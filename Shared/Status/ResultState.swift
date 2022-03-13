//
//  ResultState.swift
//  NewsApp (iOS)
//
//  Created by Shaikenov Abay on 11.03.2022.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
