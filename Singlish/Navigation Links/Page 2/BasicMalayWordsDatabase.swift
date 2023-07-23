import Foundation
import SwiftUI
import AVKit


struct Word: Identifiable, View {
    let id = UUID()
    
    var word: String
    var meaning: String
    
    var body: some View {
        Button {
            let utterance = AVSpeechUtterance(string: word)
            synthesizer.speak(utterance)
        } label: {
            Image(systemName: "speaker.wave.2.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
        }
        .padding()
    }
}


var words = [
    Word(word: "paisa", meaning: "embarrassed"),
    Word(word: "shiok", meaning: "delicious or very enjoyable"),
    Word(word: "bo jio", meaning: "not invited"),
    Word(word: "kiasu", meaning: "afraid to lose out"),
    Word(word: "alamak", meaning: "surprise, shock, or alarm"),
    Word(word: "auntie", meaning: "older woman, regardless of her actual relationship to the speaker"),
    Word(word: "bochap", meaning: "stupid or ignorant"),
    Word(word: "chope", meaning: "to reserve or to mark as taken"),
    Word(word: "eh", meaning: "to get someone's attention"),
    Word(word: "haih", meaning: "frustration, annoyance, or resignation"),
    Word(word: "lah", meaning: "to add emphasis, ask a question, or express disbelief or exasperation"),
    Word(word: "leh", meaning: "to add emphasis, ask a question, or express uncertainty"),
    Word(word: "makan", meaning: "to eat"),
    Word(word: "ops", meaning: "surprise or to apologize for a mistake"),
    Word(word: "sian", meaning: "bored or tired"),
    Word(word: "wah", meaning: "excitement, surprise, or disbelief"),
]
