//
//  EventRow.swift
//  EventPics
//
//  Created by Petko Todorov on 10/26/23.
//

import SwiftUI

struct EventRow: View {
    let event: Event

    var body: some View {
        HStack {
            Image(event.iconName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)

            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.headline)
                Text(event.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
