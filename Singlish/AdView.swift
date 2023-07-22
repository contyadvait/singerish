//
//  AdView.swift
//  Singlish
//
//  Created by Milind Contractor on 22/7/23.
//

import SwiftUI

struct AdView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            VStack {
                Image("MacAds")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                Text("Buy 5 Macs, get an Nokia 3310 for Free!")
                    .padding()
                Text("T&Cs Apply")
                    .padding()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("Purchase Now (Not refundable)")
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
            }
            
        }
    }
}

struct AdView_Previews: PreviewProvider {
    static var previews: some View {
        AdView()
    }
}
