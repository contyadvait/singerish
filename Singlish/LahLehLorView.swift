//
//  LahLehLorView.swift
//  Singlish
//
//  Created by Milind Contractor on 22/7/23.
//

import SwiftUI
import AVKit

struct LahLehLorView: View {
    let synthesizer = AVSpeechSynthesizer()
    var body: some View {
        VStack(spacing: 10) {
            Text("Let's start with the basics:\nLah, leh")
                .font(.system(size: 40, weight: .semibold))
                .multilineTextAlignment(.center)
            ScrollView {
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
/// Leh details
/// ---------------------------------------------------------
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
            .padding()
            
            
            
            
            
        }
        .padding()
    }
}

struct LahLehLorView_Previews: PreviewProvider {
    static var previews: some View {
        LahLehLorView()
    }
}
