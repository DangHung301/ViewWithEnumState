//
//  MoviePresenter.swift
//  ViewWithEnumState
//
//  Created by Artsiom Khaliliayeu on 10.02.23.
//

import UIKit

protocol MoviePresenterProtocol: AnyObject {
	func fetchState()
}

class MoviePresenter {

	weak var view: MovieViewProtocol?

	init(view: MovieViewProtocol) {
		self.view = view
	}
}

extension MoviePresenter: MoviePresenterProtocol {
	func fetchState() {
		view?.didUpdateState(.loading)
		DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
			let state: MovieViewState = Int.random(in: 0...100) % 2 == 0 ? .error : .success(Movie.mock)
			self.view?.didUpdateState(state)
		}
	}
}
