//
//  HikeDetailScreen.swift
//  Hiking
//
//  Created by Renato on 27/12/23.
//

import SwiftUI

struct HikeDetailScreen: View {

	let hike: Hike

    var body: some View {
		VStack{
			Image(hike.photo)
				.resizable()
				.aspectRatio(contentMode: .fit)

			Text(hike.name)
				.font(.title)
			Text("\(hike.miles.formatted()) miles")
			Spacer()
		}
		.navigationTitle(hike.name)
		.navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
	NavigationStack {
		HikeDetailScreen(hike: Hike(name: "Sam", photo: "sal", miles: 6))
	}
}
