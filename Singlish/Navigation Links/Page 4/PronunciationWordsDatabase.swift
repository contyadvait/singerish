import Foundation
import AVKit
import SwiftUI

struct WordPronunciation: Identifiable, View {
    let id = UUID()
    
    var explaination: String
    var wordToPronounce: String
    
    var body: some View {
        Button {
            let utterance = AVSpeechUtterance(string: wordToPronounce)
            synthesizer.speak(utterance)
        } label: {
            Image(systemName: "speaker.wave.2.circle.fill")
                .resizable()
                .frame(width: 30, height: 30)
        }
        .padding()
    }
}


var omissionsInSinglish: [WordPronunciation] = [WordPronunciation(explaination: "The 'th' sound in English is often pronounced as 't' in Singlish.\n\nFor example, 'this' becomes 'tis' in Singlish", wordToPronounce: "tis"),
                                                WordPronunciation(explaination: "The 's' sound in English is often pronounced as 'sh' in Singlish.\n\nFor example, the word 'six' is pronounced as 'shiks' in Singlish.", wordToPronounce: "shixs"),
                                                WordPronunciation(explaination: "The 'e' sound in English is often pronounced as 'eh' in Singlish.\n\nFor example, the word 'eat' is pronounced as 'eht' in Singlish.", wordToPronounce: "eht"),
                                                WordPronunciation(explaination: "The 'o' sound in English is often pronounced as 'oh' in Singlish.\n\nFor example, the word 'hot' is pronounced as 'hoht' in Singlish.", wordToPronounce: "hoht"),
                                                WordPronunciation(explaination: "The 'ai' sound in English is often pronounced as 'ah' in Singlish.\n\nFor example, the word 'high' is pronounced as 'hah' in Singlish.", wordToPronounce: "hah")]
                                                
