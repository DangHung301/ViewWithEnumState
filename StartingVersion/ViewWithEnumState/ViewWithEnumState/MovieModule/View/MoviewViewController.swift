//
//  MoviewViewController.swift
//  ViewWithEnumState
//
//  Created by Artsiom Khaliliayeu on 10.02.23.
//

import UIKit

protocol MovieViewProtocol: AnyObject {
	
}

class MovieViewController: UIViewController {

	var presenter: MoviePresenterProtocol!

	var rootView: MovieView {
		view as! MovieView
	}

	override func loadView() {
		super.loadView()
		view = MovieView()
	}

	override func viewDidLoad() {
		super.viewDidLoad()
	}
}

extension MovieViewController: MovieViewProtocol {
	
}
