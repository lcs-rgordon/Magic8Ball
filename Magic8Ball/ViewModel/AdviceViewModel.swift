//
//  AdviceViewModel.swift
//  AdviceViewModel
//
//  Created by Russell Gordon on 2021-09-16.
//

import Foundation

class AdviceViewModel {
    
    // A list of advice sessions
    var sessions: [Session] = []
    
    // Given a question, provide some advice
    func provideResponseFor(givenQuery: String) -> String {
        
        // Start a new advice session
        var currentSession = Session(question: givenQuery)

        // Get advice for the question given
        currentSession.response = Magic8Ball.getResponse()
        
        // Save the question and advice given (for possible future reference)
        sessions.append(currentSession)
        
        // Give the response
        return currentSession.response
        
    }
    
}
