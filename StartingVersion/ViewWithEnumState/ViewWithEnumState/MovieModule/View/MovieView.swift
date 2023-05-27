//
//  MovieView.swift
//  ViewWithEnumState
//
//  Created by Artsiom Khaliliayeu on 10.02.23.
//

import UIKit

class MovieView: UIView {

	let loadingView: LoadingView = {
		let view = LoadingView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.isHidden = true
		return view
	}()

	let errorView: ErrorView = {
		let view = ErrorView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.isHidden = true
		return view
	}()

	let movieView: MovieInfoView = {
		let view = MovieInfoView()
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()

	init() {
		super.init(frame: .zero)
		setup()
	}

	required init?(coder: NSCoder) {
		super.init(coder: coder)
		setup()
	}

	func setup() {
		backgroundColor = Colors.background
		addSubview(loadingView)
		addSubview(errorView)
		addSubview(movieView)
		[loadingView, errorView, movieView].forEach {
			NSLayoutConstraint.activate([
				$0.centerYAnchor.constraint(equalTo: self.centerYAnchor),
				$0.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
				$0.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
			])
		}
	}
	
}


