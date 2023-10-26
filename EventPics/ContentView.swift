//
//  ContentView.swift
//  EventPics
//
//  Created by Petko Todorov on 10/26/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Greetings, reviewer! 👋🏻")
                    .font(.title)
                    .padding(.top, 10)

                List {
                    ForEach(events, id: \.id) { event in
                        NavigationLink(destination: EventDetail(event: event)) {
                            EventRow(event: event)
                        }
                    }
                }
            }
            .navigationBarTitle("EventPics", displayMode: .large)
        }
    }
}

struct Event: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var iconName: String
}

let events = [
    Event(title: "Event 1", subtitle: "Description 1", iconName: "poster1"),
    Event(title: "Event 2", subtitle: "Description 2", iconName: "poster2"),
    Event(title: "Event 3", subtitle: "Description 3", iconName: "poster3")
]

#Preview {
    ContentView()
}


