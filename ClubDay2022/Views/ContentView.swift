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

            HStack(spacing: 8) {
                SoundboardView(model: model)
                    .cornerRadius(16)

                EmotesView(model: model)
                    .cornerRadius(16)
                    .frame(maxWidth: 300)
            }
            .cornerRadius(16)
        }
        .padding(.top, 12)
        .padding(.horizontal, 20)
        .background(
            Color(hex: 0x9B0000)
                .ignoresSafeArea()
        )
        .sheet(isPresented: $showingAbout) {
            AboutView(showingAbout: $showingAbout)
        }
    }

    var header: some View {
        HStack(spacing: 14) {
            HStack(spacing: 8) {
                Text("CL4SH ROY4L3")
                    .foregroundColor(.white)

                Text("SOUNDBOARD")
                    .foregroundColor(Color(hex: 0xF7AD18))
            }

            .padding(.top, 2)
            .padding(.bottom, 4)

            Spacer()

            Button {
                showingAbout = true
            } label: {
                Image(systemName: "info")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                    .frame(width: 50, height: 30)
                    .frame(maxHeight: .infinity)
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(12)
            }

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
                Image(systemName: model.isOn ? "pause.fill" : "play")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                    .frame(maxHeight: .infinity)
                    .background(model.isOn ? Color.green : Color.gray)
                    .cornerRadius(12)
            }
        }
        .font(.custom("Galpon-Black", size: 28))
        .frame(height: 36)
        .padding(.vertical, 10)
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
                    .padding(.horizontal, 14)
                    .frame(maxHeight: .infinity)
                    .background(.black.opacity(0.1))
            }

            Text(String(format: "%.1f", model.timerDuration))
                .padding(.horizontal, 30)

            Button {
                model.timerDuration += 0.2
            } label: {
                Text("+")
                    .padding(.horizontal, 14)
                    .frame(maxHeight: .infinity)
                    .background(.black.opacity(0.1))
            }
        }
        .foregroundColor(.white)
        .background(.gray)
        .cornerRadius(12)
    }
}
