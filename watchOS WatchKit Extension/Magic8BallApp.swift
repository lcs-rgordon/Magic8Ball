//
//  Magic8BallApp.swift
//  watchOS WatchKit Extension
//
//  Created by Russell Gordon on 2021-09-19.
//

import SwiftUI

@main
struct Magic8BallApp: App {

    // Make an instance of the view model to store questions and advice
    @StateObject private var advisor = AdviceViewModel()
    
    var body: some Scene {
        WindowGroup {
            
            TabView {

                NavigationView {
                    ContentView(advisor: advisor)
                }
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Ask")
                }

                NavigationView {
                    HistoryView(advisor: advisor)
                }
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("History")
                }

            }

            
        }
    }
}
