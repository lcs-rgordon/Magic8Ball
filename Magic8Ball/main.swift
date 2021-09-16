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

// Select a random value
let value = Int.random(in: 1...20)

// Provide a response based on the random value
// BASED UPON: https://en.wikipedia.org/wiki/Magic_8-Ball#Possible_answers
// TIP: Use the library to get code templates
//      Command-Shift-L
//
var response = ""

switch value {
    
// Affirmative answers
case 1:
    response = "It is certain"
case 2:
    response = "It is decidely so."
case 3:
    response = "Without a doubt."
case 4:
    response = "Yes definitely."
case 5:
    response = "You may rely on it."
case 6:
    response = "As I see it, yes."
case 7:
    response = "Most likely."
case 8:
    response = "Outlook good."
case 9:
    response = "Yes."
case 10:
    response = "Signs point to yes."
    
// Non-committal answers
case 11:
    response = "Reply hazy, try again."
case 12:
    response = "Ask again later."
case 13:
    response = "Better not to tell you now."
case 14:
    response = "Cannot predict now."
case 15:
    response = "Concentrate and ask again."
    
// Negative answers
case 16:
    response = "Don't count on it."
case 17:
    response = "My reply is no."
case 18:
    response = "My sources say no."
case 19:
    response = "Outlook not so good."
case 20:
    response = "Very doubtful."
    
default:
    // Do nothing
    break
}

// Provide the advice
print(response)
