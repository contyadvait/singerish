//
//  ContentView.swift
//  Singlish
//
//  Created by Milind Contractor on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    @State var popUp = true
    var body: some View {
        VStack {
            Text("Singlish Tutorial")
                .font(.system(size: 40, weight: .regular, design: .rounded))
                .bold()
            HStack {
                Button {
                    
                } label: {
                    Text("Start")
                }
                .buttonBorderShape(.roundedRectangle)
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
