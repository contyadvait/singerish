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
            LahLehLorView()
                .tabItem {
                    Label("First Page", systemImage: "1.circle.fill")
                }
            
            BasicMalayWords()
                .tabItem {
                    Label("Second Page", systemImage: "2.circle.fill")
                }
            
            BasicMalayWords()
                .tabItem {
                    Label("Third Page", systemImage: "3.circle.fill")
                }
            
            PronunciationView()
                .tabItem {
                    Label("Fourth Page", systemImage: "4.circle.fill")
                }
        }
        .tabViewStyle(.page)
                .fullScreenCover(isPresented: $openHomeScreen) {
                    ContentView()
                }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
