//
//  ErrorView.swift
//  ViewWithEnumState
//
//  Created by Artsiom Khaliliayeu on 11.02.23.
//

import UIKit

class ErrorView: UIView {

	let stackView: UIStackView = {
		let stack = UIStackView()
		stack.translatesAutoresizingMaskIntoConstraints = false
		stack.alignment = .fill
		stack.distribution = .fill
		stack.axis = .vertical
		return stack
	}()

	let titleLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.textAlignment = .center
		label.textColor = Colors.textPrimary
		label.font = Fonts.title
		label.text = Strings.errorTitle
		return label
	}()

	let subtitleLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.textAlignment = .center
		label.textColor = Colors.textPrimary
		label.font = Fonts.basicText
		label.text = Strings.errorSubtitle
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
		stackView.addArrangedSubview(titleLabel)
		stackView.setCustomSpacing(12, after: titleLabel)
		stackView.addArrangedSubview(subtitleLabel)
		
		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
			stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
			stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
			stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16)
		])
	}
}
