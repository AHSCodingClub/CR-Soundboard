//
//  ContentView.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = ViewModel()
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 14) {
                    Group {
                        Text("CL4SH ROY4L3")
                            .foregroundColor(.white)
                            .font(.custom("Galpon-Black", size: 56))
                        
                        Text("SOUNDBOARD")
                            .foregroundColor(Color(hex: 0xF7AD18))
                            .font(.custom("Galpon-Black", size: 56))
                            .italic()
                    }
                    .padding(.top, 2)
                    .padding(.bottom, 4)
                    
                    Spacer()
                    
                    Button {
                        withAnimation {
                            model.isOn.toggle()
                        }
                        
                        if model.isOn {
                            model.start()
                        } else {
                            model.stop()
                        }
                        
                    } label: {
                        Text(model.isOn ? "ON" : "OFF")
                            .foregroundColor(.white)
                            .font(.custom("Galpon-Black", size: 56))
                            .padding(.horizontal, 20)
                            .background(model.isOn ? Color.green : Color.gray)
                            .cornerRadius(16)
                    }
                }
                .padding(.top, 4)
                
                SoundboardView(model: model)
                    .padding(.top, 8)
            }
            .padding(24)
            .background(
                Color(hex: 0x0060C2)
            )
            .cornerRadius(24)
            .padding(.horizontal, 24)
            
            EmotesView(model: model)
                .padding(.top, -36) /// allow slight overlap
        }
        .padding(.top, 24)
        .background(
            Color(hex: 0x9B0000)
        )
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
