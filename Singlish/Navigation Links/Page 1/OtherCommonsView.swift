//
//  OtherCommonsView.swift
//  Singlish
//
//  Created by Milind Contractor on 23/7/23.
//

import SwiftUI
import AVKit

struct OtherCommonsView: View {
    
    func speaker(_ line: String) -> some View {
        Button {
            let utterance = AVSpeechUtterance(string: line)
            synthesizer.speak(utterance)
        } label: {
            Image(systemName: "speaker.wave.2.circle.fill")
        }
    }
    
    var body: some View {
        VStack {
            Text("Here are some other common words")
                .font(.title2)
            HStack {
                speaker("Lor")
                Text("Lor -  Often used to express certainty or finality")
            }
            .padding()
            HStack {
                speaker("Meh")
                Text("Meh -  Often used to express doubt or uncertainty")
            }
            .padding()
            HStack {
                speaker("Can")
                Text("Can -  This is often used to express permission or possibility")
            }
            .padding()
            HStack {
                speaker("Aiyah")
                Text("Aiyah -  This is used to express fustration, annoyance, or surprise")
            }
            .padding()
            HStack {
                speaker("Wah")
                Text("Wah -  This particle is used to express excitement, surprise, or disbelief.")
            }
            .padding()
            
            HStack {
                speaker("Shiok")
                Text("Shiok -  Used to express delight or enjoyment")
            }
            .padding()
            
            Text("_Swipe right to continue to the next page_")
        }
    }
}

struct OtherCommonsView_Previews: PreviewProvider {
    static var previews: some View {
        OtherCommonsView()
    }
}
