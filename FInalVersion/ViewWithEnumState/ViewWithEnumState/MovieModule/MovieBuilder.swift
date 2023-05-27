//
//  MovieBuilder.swift
//  ViewWithEnumState
//
//  Created by Artsiom Khaliliayeu on 10.02.23.
//

import Foundation

class MovieBuilder {

	func build() -> MovieViewController {
		let view = MovieViewController()
		let presenter = MoviePresenter(view: view)
		view.presenter = presenter

		return view
	}
}
