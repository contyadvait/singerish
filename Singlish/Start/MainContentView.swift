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
    @State var openDataView = false
    var body: some View {
        VStack {
            TabView {
                LahLehLorView()
                    .tabItem {
                        Label("First Page", systemImage: "1.circle.fill")
                    }
                
                BasicMalayWords()
                    .tabItem {
                        Label("Second Page", systemImage: "2.circle.fill")
                    }
                
                PronunciationView()
                    .tabItem {
                        Label("Fourth Page", systemImage: "3.circle.fill")
                    }
                
                Text("WAIT FOR IT!")
                    .onAppear {
                        openDataView = true
                    }
                    .tabItem {
                        Label("Fifth Page", systemImage: "4.circle.fill")
                    }
            }
            .tabViewStyle(.page)
        }
        .fullScreenCover(isPresented: $openHomeScreen) {
            ContentView()
        }
        .fullScreenCover(isPresented: $openDataView) {
            DataView(address: "")
        }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
