//
//  MainContentView.swift
//  Singlish
//
//  Created by Milind Contractor on 22/7/23.
//

import SwiftUI
import AVKit

struct MainContentView: View {
    let synthesizer = AVSpeechSynthesizer()
    @State var openHomeScreen = true
    var body: some View {
        TabView {
            VStack(spacing: 10) {
                Text("Let's start with the basics:\nLah, leh and lor!")
                    .font(.system(size: 40, weight: .semibold))
                    .multilineTextAlignment(.center)
                HStack {
                    Text("Lah")
                    Button {
                        let utterance = AVSpeechUtterance(string: "lah")
                        synthesizer.speak(utterance)
                    } label: {
                        Image(systemName: "speaker.wave.2.circle.fill")
                    }
                }
            }
                .tabItem {
                    Label("First Page", systemImage: "one.circle")
                }
        }
        .tabViewStyle(.page)
//        .fullScreenCover(isPresented: $openHomeScreen) {
//            ContentView()
//        }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
