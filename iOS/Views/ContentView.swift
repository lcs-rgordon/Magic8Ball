//
//  ContentView.swift
//  iOS
//
//  Created by Russell Gordon on 2021-09-16.
//

import SwiftUI

struct ContentView: View {
    
    @State private var question = ""
    
    var body: some View {
        VStack {
            
            // Ask a question
            TextField("Question",
                      text: $question,
                      prompt: Text("What do you need advice on?"))
            
            // Get advice
            Button(action: {
                print("Shake button was pressed")
            }, label: {
                Text("Shake")
            })
                .padding()
                // Return will trigger this button
                .keyboardShortcut(.defaultAction)
            
            // Advice given
            Text("It is certain.")
            
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
