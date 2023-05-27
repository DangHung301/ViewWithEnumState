//
//  MoviePresenter.swift
//  ViewWithEnumState
//
//  Created by Artsiom Khaliliayeu on 10.02.23.
//

import UIKit

protocol MoviePresenterProtocol: AnyObject {
	
}

class MoviePresnter {

	weak var view: MovieViewProtocol?

	init(view: MovieViewProtocol) {
		self.view = view
	}
}

extension MoviePresnter: MoviePresenterProtocol {
	
}
