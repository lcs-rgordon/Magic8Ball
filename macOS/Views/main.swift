//
//  main.swift
//  Magic8Ball
//
//  Created by Russell Gordon on 2021-09-16.
//

import Foundation

// Make an instance of the view model to store questions and advice
var advisor = AdviceViewModel()

// Program name
print("MAGIC 8 BALL")
print("============")

// Ask for user's question
print("""
NOTE: Questions should be phrased in such
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

// Show the advice
let output = advisor.provideResponseFor(givenQuery: input
print(output)
