//
//  Magic8Ball.swift
//  Magic8Ball
//
//  Created by Russell Gordon on 2021-09-16.
//

import Foundation

struct Magic8Ball {
    
    static func getResponse() -> String {
        
        // Select a random value
        let value = Int.random(in: 1...20)

        // Provide a response based on the random value
        // BASED UPON: https://en.wikipedia.org/wiki/Magic_8-Ball#Possible_answers
        // TIP: Use the library to get code templates
        //      Command-Shift-L
        //
        switch value {
            
        // Affirmative answers
        case 1:
            return "It is certain."
        case 2:
            return "It is decidely so."
        case 3:
            return "Without a doubt."
        case 4:
            return "Yes definitely."
        case 5:
            return "You may rely on it."
        case 6:
            return "As I see it, yes."
        case 7:
            return "Most likely."
        case 8:
            return "Outlook good."
        case 9:
            return "Yes."
        case 10:
            return "Signs point to yes."
            
        // Non-committal answers
        case 11:
            return "Reply hazy, try again."
        case 12:
            return "Ask again later."
        case 13:
            return "Better not to tell you now."
        case 14:
            return "Cannot predict now."
        case 15:
            return "Concentrate and ask again."
            
        // Negative answers
        case 16:
            return "Don't count on it."
        case 17:
            return "My reply is no."
        case 18:
            return "My sources say no."
        case 19:
            return "Outlook not so good."
        case 20:
            return "Very doubtful."
            
        default:
            // Do nothing
            return ""
        }

    }
    
}
