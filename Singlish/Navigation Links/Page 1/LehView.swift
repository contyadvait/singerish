//
//  LehView.swift
//  Singlish
//
//  Created by Milind Contractor on 23/7/23.
//

import SwiftUI
import AVKit

struct LehView: View {
    var body: some View {
        HStack {
            Text("Leh")
                .font(.title2)
            Button {
                let utterance = AVSpeechUtterance(string: "leh")
                synthesizer.speak(utterance)
            } label: {
                Image(systemName: "speaker.wave.2.circle.fill")
            }
        }
        .padding()
        Text("Leh is a discourse particle that is used in Singlish to add emphasis, ask a question, or express uncertainty. It is a versatile word that can be used in a variety of ways.")
            .padding()
        Text("Examples:")
            .font(.title3)
            .padding()
        HStack {
            Text("I'm going to the mall leh!")
            Button {
                let utterance = AVSpeechUtterance(string: "I'm going to the mall leh!")
                synthesizer.speak(utterance)
            } label: {
                Image(systemName: "speaker.wave.2.circle.fill")
            }
        }.padding()
        
        HStack {
            VStack {
                Text("I dunno leh…")
                    .multilineTextAlignment(.leading)
            }
            Button {
                let utterance = AVSpeechUtterance(string: "I dunno leh…")
                synthesizer.speak(utterance)
            } label: {
                Image(systemName: "speaker.wave.2.circle.fill")
            }
        }.padding()
    }
}

struct LehView_Previews: PreviewProvider {
    static var previews: some View {
        LehView()
    }
}
