//
//  PronunciationView.swift
//  Singlish
//
//  Created by Milind Contractor on 23/7/23.
//

import SwiftUI
import AVKit

struct PronunciationView: View {
    var body: some View {
        VStack {
            Text("Pronunciations in Singlish")
                .font(.system(size: 40, weight: .semibold))
                .multilineTextAlignment(.center)
            
            Text("There are many words that have changes in pronunciations in singlish. Here is a list of some of them.")
                .multilineTextAlignment(.leading)
                .padding()
            
            ScrollView {
                VStack {
                    Divider()
                    ForEach(omissionsInSinglish, id: \.id) { item in
                        HStack {
                            VStack {
                                Text("Pronunciation")
                                    .font(.system(size: 11))
                                    .multilineTextAlignment(.center)
                                item.body
                            }
                            Divider()
                            Text(item.explaination)
                        }
                        Divider()
                    }
                }
            }
        }
    }
}

struct PronunciationView_Previews: PreviewProvider {
    static var previews: some View {
        PronunciationView()
    }
}
