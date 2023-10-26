//
//  EventDetail.swift
//  EventPics
//
//  Created by Petko Todorov on 10/26/23.
//

import SwiftUI

struct EventDetail: View {
    let event: Event

    // Sample photo data, replace this with your own data
    let samplePhotos = [
        "concert1",
        "concert2",
        "concert3",
        "concert4",
        "concert5",
        "concert6",
        "concert7",
        "concert8",
        "concert9"
    ]

    var body: some View {
        VStack {
//            Text(event.title)
//                .font(.largeTitle)
            Text(event.subtitle)
                .font(.title)

            Button(action: {
                // Handle the "Invite a friend" action here
            }) {
                Text("Invite a friend")
                    .font(.headline)
                    .foregroundColor(.blue)
            }
            .padding(.top, 10)

            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(), count: 3), spacing: 10) {
                    ForEach(samplePhotos, id: \.self) { photoName in
                        Image(photoName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            Spacer()
        }
        .navigationBarTitle(event.title, displayMode: .inline)
        .navigationBarItems(trailing:
                                Button(action: {
            // Handle the "Add" button action here
        }) {
            Text("Add photo")
        }
        )
    }
}
