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
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 14) {
                Group {
                    Text("CL4SH ROY4L3")
                        .foregroundColor(.white)
                        .font(.system(size: 46))

                    Text("SOUNDBOARD")
                        .foregroundColor(Color(hex: 0xF7AD18))
                        .font(.custom("Times", size: 46))
                        .italic()
                }
                .padding(.vertical, 14)

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
                        .font(.system(size: 46))
                        .padding(.horizontal, 20)
                        .padding(.vertical, 12)
                        .background(model.isOn ? Color.green : Color.gray)
                        .cornerRadius(16)
                }
            }
            .fontWeight(.heavy)
            .padding(.top, 4)
            .padding(.horizontal, 24)

            VStack(spacing: 16) {
                SoundboardView(model: model)
                    .padding(.horizontal, 24)
                    .padding(.top, 8)

                EmotesView()
            }
//
//            .padding(.top, 8)
        }
        .background(
            Color(hex: 0x0060C2)
        )
        .cornerRadius(24)
        .padding(48)
        .background(
            Color(hex: 0x9B0000)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
