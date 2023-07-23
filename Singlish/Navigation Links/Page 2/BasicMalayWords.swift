//
//  BasicMalayWords.swift
//  Singlish
//
//  Created by Milind Contractor on 22/7/23.
//

import SwiftUI

struct BasicMalayWords: View {
    var body: some View {
        VStack {
            Text("More Basic Words")
                .font(.system(size: 40, weight: .semibold))
                .multilineTextAlignment(.center)
            Text("There are tons of words, so here is a table with a brief summary of the most common ones")
                .padding()
            ScrollView {
                VStack {
                    ForEach(words, id: \.id) { word in
                        HStack {
                            HStack {
                                word.body
                                Divider()
                            }
                            .frame(alignment: .leading)
                            VStack {
                                HStack {
                                    Text(word.word)
                                        .font(.title2)
                                    Spacer()
                                }
                                Divider()
                                HStack {
                                    Text(word.meaning)
                                        .font(.title3)
                                        .italic()
                                        .frame(alignment: .leading)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                            }
                        }
                        Divider()
                    }
                }
                .padding()
            }
        }
    }
}

struct BasicMalayWords_Previews: PreviewProvider {
    static var previews: some View {
        BasicMalayWords()
    }
}
