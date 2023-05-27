//
//  MovieInfoView.swift
//  ViewWithEnumState
//
//  Created by Artsiom Khaliliayeu on 10.02.23.
//

import UIKit

class MovieInfoView: UIView {

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
		return label
	}()

	let genresLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.textAlignment = .left
		label.textColor = Colors.textSecondary
		label.font = Fonts.basicText
		return label
	}()

	let descriptionLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.textAlignment = .left
		label.textColor = Colors.textPrimary
		label.font = Fonts.basicText
		label.numberOfLines = 0
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
		stackView.addArrangedSubview(genresLabel)
		stackView.setCustomSpacing(8, after: genresLabel)
		stackView.addArrangedSubview(descriptionLabel)
		
		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
			stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
			stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
			stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16)
		])
	}

	func set(_ movie: Movie) {
		titleLabel.text = movie.title
		genresLabel.text = movie.genres.joined(separator: "; ")
		descriptionLabel.text = movie.description
	}
}
