//
//  LoadingView.swift
//  ViewWithEnumState
//
//  Created by Artsiom Khaliliayeu on 11.02.23.
//

import UIKit

class LoadingView: UIView {

	let stackView: UIStackView = {
		let stack = UIStackView()
		stack.translatesAutoresizingMaskIntoConstraints = false
		stack.alignment = .fill
		stack.distribution = .fill
		stack.axis = .vertical
		stack.spacing = 12
		return stack
	}()

	let activityIndicator: UIActivityIndicatorView = {
		let activityIndicator = UIActivityIndicatorView(style: .large)
		activityIndicator.translatesAutoresizingMaskIntoConstraints = false
		activityIndicator.isHidden = false
		return activityIndicator
	}()

	let activityIndicatorContainerView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()

	let label: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.textAlignment = .center
		label.textColor = Colors.textPrimary
		label.font = Fonts.loading
		label.text = Strings.loadingTitle
		return label
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
		addSubview(stackView)
		stackView.addArrangedSubview(activityIndicatorContainerView)
		activityIndicatorContainerView.addSubview(activityIndicator)
		stackView.addArrangedSubview(label)

		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
			stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
			stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
			stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
			activityIndicator.topAnchor.constraint(equalTo: activityIndicatorContainerView.topAnchor),
			activityIndicator.bottomAnchor.constraint(equalTo: activityIndicatorContainerView.bottomAnchor),
			activityIndicator.centerXAnchor.constraint(equalTo: activityIndicatorContainerView.centerXAnchor)
		])
	}

	func startAnumating(_ start: Bool) {
		start ? activityIndicator.startAnimating() : activityIndicator.stopAnimating()
	}
}
