//
//  LahLehLorView.swift
//  Singlish
//
//  Created by Milind Contractor on 22/7/23.
//

import SwiftUI
import AVKit

struct LahLehLorView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Let's start with the basics:\nLah and leh")
                .font(.system(size: 40, weight: .semibold))
                .multilineTextAlignment(.center)
            ScrollView {
                LahView()
                Divider()
                LehView()
                Divider()
                OtherCommonsView()
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
