//
//  ContentView.swift
//  iOS
//
//  Created by Russell Gordon on 2021-09-16.
//

import SwiftUI

struct ContentView: View {
    
    // Make an instance of the view model to store questions and advice
    @StateObject private var advisor = AdviceViewModel()

    // Stores the current question being asked
    @State private var input = ""
    
    // Stores the response to the given question
    @State private var output = ""
    
    var body: some View {
        VStack {
            
            // Advice given
            HStack {
                Text("""
**NOTE:**
Questions should be phrased in such that they can be answered with a yes or no response.
""")
                Spacer()
            }

            // Ask a question
            TextField("Question",
                      text: $input,
                      prompt: Text("What do you need advice on?"))
            
            // Get advice
            Button(action: {
                print("Shake button was pressed")
                output = advisor.provideResponseFor(givenQuery: input)
            }, label: {
                Text("Shake")
            })
                .padding()
                // Return will trigger this button
                .keyboardShortcut(.defaultAction)
                // Only enable the button when a question is asked
                .disabled(!input.contains("?"))
            
            // Advice given
            Text(output)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Magic 8 Ball")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
