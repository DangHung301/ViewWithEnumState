//
//  MovieViewState.swift
//  ViewWithEnumState
//
//  Created by Artsiom Khaliliayeu on 11.02.23.
//

import Foundation

enum MovieViewState {
	case success(Movie)
	case loading
	case error
}
