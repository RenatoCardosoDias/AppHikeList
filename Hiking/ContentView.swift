//
//  ContentView.swift
//  Hiking
//
//  Created by Renato on 27/12/23.
//

import SwiftUI

struct ContentView: View {

	let hikes = [
		Hike(name: "Salmonberry Trail", photo: "sal", miles: 6),
		Hike(name: "Tom, Dick, and Harry Mountain", photo: "tom", miles: 5.6),
		Hike(name: "Tamanawas Falls", photo: "tam", miles: 5)
	]
    var body: some View {
		List(hikes) { hike in
			HStack(alignment: .top) {
				Image(hike.photo)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
					.frame(width: 75)
				VStack(alignment: .leading) {
					Text(hike.name)
						.font(.footnote)
					Text("\(hike.miles.formatted()) Miles")
				}
			}
		}
    }
}

#Preview {
    ContentView()
}
