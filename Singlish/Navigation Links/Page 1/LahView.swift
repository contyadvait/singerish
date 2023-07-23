//
//  LahView.swift
//  Singlish
//
//  Created by Milind Contractor on 23/7/23.
//

import SwiftUI
import AVKit

let synthesizer = AVSpeechSynthesizer()

struct LahView: View {
    var body: some View {
        HStack {
            Text("Lah")
                .font(.title2)
            Button {
                let utterance = AVSpeechUtterance(string: "lah")
                synthesizer.speak(utterance)
            } label: {
                Image(systemName: "speaker.wave.2.circle.fill")
            }
        }
        .padding()
        Text("Lah is a simple word that can be added to the end of sentances to add emphasis, or to add a bit of flavour to the end of sentences.")
            .padding()
        Text("Examples:")
            .font(.title3)
            .padding()
        HStack {
            Text("I'm going to the mall lah!")
            Button {
                let utterance = AVSpeechUtterance(string: "I'm going to the mall lah!")
                synthesizer.speak(utterance)
            } label: {
                Image(systemName: "speaker.wave.2.circle.fill")
            }
        }.padding()
        
        HStack {
            VStack {
                Text("I'm rich lah!\n_Words can be eaten_")
                    .multilineTextAlignment(.leading)
            }
            Button {
                let utterance = AVSpeechUtterance(string: "I'm rich lah!")
                synthesizer.speak(utterance)
            } label: {
                Image(systemName: "speaker.wave.2.circle.fill")
            }
        }.padding()
        
            .padding()
    }
}

struct LahView_Previews: PreviewProvider {
    static var previews: some View {
        LahView()
    }
}
