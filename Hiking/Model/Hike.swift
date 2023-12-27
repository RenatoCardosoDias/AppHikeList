//
//  Hike.swift
//  Hiking
//
//  Created by Renato on 27/12/23.
//

import Foundation

struct Hike: Identifiable, Hashable {
	let id = UUID()
	let name: String
	let photo: String
	let miles: Double
}
