//
//  HistoryView.swift
//  watchOS WatchKit Extension
//
//  Created by Russell Gordon on 2021-09-19.
//

import SwiftUI

struct HistoryView: View {
    
    // Make an instance of the view model to store questions and advice
    @ObservedObject var advisor: AdviceViewModel

    var body: some View {
        
        // Show the list of questions and responses
        List(advisor.sessions.reversed()) { session in
            VStack(alignment: .leading) {
                Text(session.question)
                    .bold()
                Text(session.response)
            }
        }
        .navigationTitle("History")

    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(advisor: AdviceViewModel())
    }
}
