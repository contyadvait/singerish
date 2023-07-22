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
            Text("Basic Malay Words")
                .font(.system(size: 40, weight: .semibold))
                .multilineTextAlignment(.center)
        }
    }
}

struct BasicMalayWords_Previews: PreviewProvider {
    static var previews: some View {
        BasicMalayWords()
    }
}
