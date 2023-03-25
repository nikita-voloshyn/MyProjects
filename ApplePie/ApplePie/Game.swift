import Foundation

struct Game {
    let word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: Set<Character> = []
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.insert(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
    
    var formattedWord: String {
        return word.map {
            guessedLetters.contains($0) ? "\($0)" : "_"
        }.joined()
    }
}
