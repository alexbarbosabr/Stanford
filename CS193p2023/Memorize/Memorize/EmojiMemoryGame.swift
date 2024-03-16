//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Alex on 11/03/24.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["🎃", "👻", "💀", "🕷️", "🕯️", "🧹", "☠️", "😈", "🧙‍♀️", "🕸️", "😱", "🍭", "🙀", "🍬"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairOfCards: 12) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                emojis[pairIndex]
            } else {
                "⁉️"
            }
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: [MemoryGame<String>.Card] {
        model.cards
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
