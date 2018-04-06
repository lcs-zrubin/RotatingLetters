//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation
var acceptableCharacters = 0

// Get the user input
var rawInput = readLine()

//Make the user input not optional
guard let input = rawInput else {
    //ERROR
    exit(9)
}

if input.characters.count < 1 || input.characters.count > 30 {
    exit(9)
}

for individualCharacter in input {
    
    
    // Categorize the character
    switch individualCharacter {
    case "I", "O", "S", "H", "Z", "X", "N":
        acceptableCharacters += 1
    default:
        break
    }
}

// Print out the input provided
print("You said:")
print(rawInput)

if acceptableCharacters == individualCharacters.count {
    print("YES")
} else {
    print("NO")
}
