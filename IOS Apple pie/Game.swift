//
//  Game.swift
//  IOS Apple pie
//
//  Created by Kazi safir on 12/5/23.
//

import Foundation

struct Game{
    var word: String
    var incorrectMovesRemanining: Int
    var guessedLetters: [Character]
    var formattedWord: String{
        var guessedWord = ""
        for letter in word{
            if guessedLetters.contains(letter){
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemanining -= 1
        }
    }
}
