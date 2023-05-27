//
//  MoviewViewController.swift
//  ViewWithEnumState
//
//  Created by Artsiom Khaliliayeu on 10.02.23.
//

import UIKit

protocol MovieViewProtocol: AnyObject {
	func didUpdateState(_ state: MovieViewState)
}

class MovieViewController: UIViewController {

	var presenter: MoviePresenterProtocol!

	private var timer: Timer!

	var rootView: MovieView {
		view as! MovieView
	}

	override func loadView() {
		super.loadView()
		view = MovieView()
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		startTimer()
	}

	func startTimer() {
		timer?.invalidate()
		timer = Timer.scheduledTimer(timeInterval: 4, target: self, selector: #selector(fetchState), userInfo: nil, repeats: false)
	}

	@objc func fetchState() {
		presenter.fetchState()
	}
}

extension MovieViewController: MovieViewProtocol {

	func didUpdateState(_ state: MovieViewState) {
		rootView.updateState(state)
		startTimer()
	}

}
