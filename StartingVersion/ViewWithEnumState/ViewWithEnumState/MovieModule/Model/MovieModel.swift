//
//  MovieModel.swift
//  ViewWithEnumState
//
//  Created by Artsiom Khaliliayeu on 10.02.23.
//

import Foundation

struct Movie {
	let title: String
	let description: String
	let genres: [String]

	static let mock = Movie(
		title: "Fast X",
		description: "Over many missions and against impossible odds, Dom Toretto (Vin Diesel) and his family have outsmarted, out-nerved and outdriven every foe in their path. Now, they confront the most lethal opponent they’ve ever faced: A terrifying threat emerging from the shadows of the past who’s fueled by blood revenge, and who is determined to shatter this family and destroy everything—and everyone—that Dom loves, forever.",
		genres: ["Action", "Crime", "Mystery", "Thriller"]
	)
}
