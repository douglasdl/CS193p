//  VIEW
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Douglas Dias Leal on 20/03/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🐖", "🐄", "🐓"]
        //let emojis: Array<String> = ["🐖", "🐄", "🐓", "🦃", "🐃", "🐂", "🐎", "🐏", "🐑", "🦙", "🐇", "🐐"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
