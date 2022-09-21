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
    @State var showingAbout = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            header
                .cornerRadius(16)
        
            HStack {
                SoundboardView(model: model)
                    .cornerRadius(16)
                    
                EmotesView(model: model)
                    .cornerRadius(16)
                    .frame(maxWidth: 300)
            }
            .cornerRadius(16)
        }
        .padding(.top, 12)
        .background(
            Color(hex: 0x9B0000)
                .ignoresSafeArea()
        )
        .sheet(isPresented: $showingAbout) {
            AboutView()
        }
    }

    var header: some View {
        HStack(spacing: 14) {
            Button {
                showingAbout = true
            } label: {
                Image(systemName: "info")
                    .background(Color.blue)
                    .cornerRadius(16)
            }
            
            HStack(spacing: 8) {
                Text("CL4SH ROY4L3")
                    .foregroundColor(.white)
                    
                Button {
                    model.currentColumnIndex = nil
                } label: {
                    Text("SOUNDBOARD")
                        .foregroundColor(Color(hex: 0xF7AD18))
                }
            }
            
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
                    .frame(maxHeight: .infinity)
                    .padding(.horizontal, 20)
                    .background(model.isOn ? Color.green : Color.gray)
                    .cornerRadius(16)
            }
        }
        .frame(height: 32)
        .padding(.vertical, 8)
        .font(.custom("Galpon-Black", size: 26))
        .padding(.horizontal, 20)
        .background(
            Color(hex: 0x0060C2)
        )
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
        .background(.gray)
        .cornerRadius(16)
    }
}
