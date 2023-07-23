//
//  AdView.swift
//  Singlish
//
//  Created by Milind Contractor on 22/7/23.
//

import SwiftUI

struct MacAdView: View {
    @State var openVisionProAd = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Image("Nokia")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                    
                    Image(systemName: "xmark")
                        .frame(height: 150)
                        .padding()
                    
                    Image(systemName: "apple.logo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 39)
                    Spacer()
                }
                
                Image("MacAds")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                Text("Buy 5 Macs, get an Nokia 3310 for Free!")
                    .padding()
                Text("Cheapest Macs starting at:")
                    .padding()
                ZStack {
                    Circle()
                        .foregroundColor(.yellow)
                        .frame(width: 150)
                    Text("$4,999,999 only!")
                }

                Button {
                    openVisionProAd = true
                } label: {
                    Image(systemName: "dollarsign.circle.fill")
                    Text("Purchase Now (Not refundable)")
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                    Text("Get another product...")
                }
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
            }
            
        }
        .fullScreenCover(isPresented: $openVisionProAd) { VisionProAdView() }
    }
}

struct NokiaAdView: View {
    @State var openMacAd = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Image("Nokia")
                .resizable()
                .scaledToFit()
                .padding()
                .frame(width: 200)
            Text("Introducing...")
            
            Image("3310 ad")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
            
            Text("The all new 3310!\nHarder then ever, and can break mroe surfaces then ever!")
                .multilineTextAlignment(.center)
                .lineSpacing(10)
            
            Text("Starting at $299!")
            
            Button {
                openMacAd = true
            } label: {
                Image(systemName: "dollarsign.circle.fill")
                Text("Purchase Now (Not refundable)")
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark.circle.fill")
                Text("Buy something else.....")
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
        }
        .fullScreenCover(isPresented: $openMacAd) { MacAdView() }
    }
}

struct VisionProAdView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Image("Vision Pro")
                Image("3310 ad")
                    .resizable()
                    .frame(width: 40, height: 90)
                    .rotationEffect(Angle(degrees: 25))
                    .offset(x: 100, y: -70)
                
                Text("Get 100 Vision Pros, free Nokia 3310!")
                    .foregroundColor(.white)
                
                Text("Starting at only $9,999,999!")
                    .foregroundColor(.white)
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
        MacAdView()
        NokiaAdView()
        VisionProAdView()
    }
}
