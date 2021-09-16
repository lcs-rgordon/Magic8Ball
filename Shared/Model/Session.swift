//
//  Session.swift
//  Session
//
//  Created by Russell Gordon on 2021-09-16.
//

import Foundation

// An advice session
struct Session: Identifiable {
    
    // Unique identifier for each session
    let id = UUID()
    
    // Question must be set to start an advice session
    let question: String
    
    // Response will be provided later
    var response: String = ""
}
