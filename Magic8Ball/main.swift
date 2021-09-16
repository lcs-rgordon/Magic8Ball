//
//  main.swift
//  Magic8Ball
//
//  Created by Russell Gordon on 2021-09-16.
//

import Foundation

// Program name
print("MAGIC 8 BALL")
print("============")

// Ask for user's question
print("""
NOTE: Questions should be phrased such
      that they can be answered with a
      yes or no response.

""")
print("What is your question? ")

// Get input as a non-optional String
let input = readLine()!

// Print out their question
print("")
print("You said: \(input)")
print("")

// Start a new advice session
var currentSession = Session(question: input)

// Get advice for the question given
currentSession.response = Magic8Ball.getResponse()

// Show the advice
print(currentSession.response)
