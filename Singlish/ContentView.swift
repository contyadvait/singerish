//
//  ContentView.swift
//  Singlish
//
//  Created by Milind Contractor on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.dismiss) var dismiss
    @State var popUp = true
    var body: some View {
        VStack {
            Text("Singlish Tutorial")
                .font(.system(size: 40, weight: .regular, design: .rounded))
                .bold()
            HStack {
                Button {
                    dismiss()
                } label: {
                    Text("Start")
                }
                .buttonBorderShape(.roundedRectangle)
                .buttonStyle(.borderedProminent)
                
                Button {
                    
                } label: {
                    Text("T&Cs")
                }
                .buttonBorderShape(.roundedRectangle)
                .buttonStyle(.bordered)
            }
        }
        .onAppear() {
            popUp = true
        }
        .fullScreenCover(isPresented: $popUp) {
            AdView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
