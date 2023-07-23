//
//  OmissionsView.swift
//  Singlish
//
//  Created by Milind Contractor on 23/7/23.
//

import SwiftUI

struct OmissionsView: View {
    var body: some View {
        VStack {
            Text("Omissions of Words in Singlish")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
            
            Text("In Singlish, many parts of a sentance (some that some people would even consider to be 'important' can be removed.")
                .padding()
            ScrollView {
                
                VStack {
                    Divider()
                    Text("Articles")
                        .bold()
                    Text("Words like 'the' and 'a' to introdcuce nouns. You might say 'I saw cat' instead of saying 'I saw a cat.'")
                        .padding()
                }
                
                VStack {
                    Divider()
                    Text("Prepositions")
                        .bold()
                    Text("Prepositions are words like 'in,' 'on,' and 'to' that are used to show the relationship between two words. In Singlish, prepositions are often omitted. For example, instead of saying 'I'm going to the store,' you might say 'I'm going store.'")
                        .padding()
                    Divider()
                }
                
                VStack {
                    Text("Verb endings")
                        .bold()
                    Text("In English, verbs often have different endings depending on the tense of the verb. In Singlish, however, verb endings are often omitted. For example, instead of saying 'I was going to the store,' you might say 'I was go store.'")
                        .padding()
                    Divider()
                }
                
                VStack {
                    Text("Pronouns")
                        .bold()
                    Text("Pronouns are words like 'he', 'she', and 'it' that are used to replace nouns. In Singlish, pronouns are often omitted. For example, instead of saying 'He is my friend,' you might say 'He my friend.'")
                        .padding()
                    Divider()
                }
            }
        }
    }
}

struct OmissionsView_Previews: PreviewProvider {
    static var previews: some View {
        OmissionsView()
    }
}
