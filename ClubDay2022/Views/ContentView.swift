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
        GeometryReader { geometry in
            
            /// iPad portrait width: 1024
            /// /// iPad landscape width: 1366
            content(isVertical: geometry.size.width < 1100)
        }
    }
    
    func content(isVertical: Bool) -> some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 14) {
                    let layout = isVertical
                        ? AnyLayout(_VStackLayout(alignment: .leading, spacing: 0))
                        : AnyLayout(_HStackLayout(spacing: 14))
                    
                    layout {
                        Text("CL4SH ROY4L3")
                            .foregroundColor(.white)
                            
                        Button {
                            model.currentColumnIndex = nil
                        } label: {
                            Text("SOUNDBOARD")
                                .foregroundColor(Color(hex: 0xF7AD18))
                        }
                    }
                    .font(.custom("Galpon-Black", size: 56))
                    .padding(.top, 2)
                    .padding(.bottom, 4)
                    
                    Spacer()
                    
                    SpeedControlView(model: model)
                    
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
            .padding(.top, 8)
            .padding(.horizontal, 24)
            .padding(.bottom, 24)
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

struct SpeedControlView: View {
    @ObservedObject var model: ViewModel
    
    var body: some View {
        HStack(spacing: 0) {
            Button {
                if model.timerDuration >= 0.2 {
                    model.timerDuration -= 0.2
                }
            } label: {
                Text("-")
                    .padding(.horizontal, 20)
                    .frame(maxHeight: .infinity)
                    .background(.black.opacity(0.1))
            }
            
            Text(String(format: "%.1f", model.timerDuration))
                .padding(.horizontal, 30)
            
            Button {
                model.timerDuration += 0.2
            } label: {
                Text("+")
                    .padding(.horizontal, 20)
                    .frame(maxHeight: .infinity)
                    .background(.black.opacity(0.1))
            }
        }
        .foregroundColor(.white)
        .font(.custom("Galpon-Black", size: 56))
        .background(.gray)
        .cornerRadius(16)
        .fixedSize(horizontal: false, vertical: true)
    }
}
