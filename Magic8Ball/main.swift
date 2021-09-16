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
print("What is your question? ")
// Get input as a non-optional String
let input = readLine()!

// Print out their question
print("You said: \(input)")

// Select a random value
let value = Int.random(in: 1...8)

// Print the random value
print("The value is: \(value)")
