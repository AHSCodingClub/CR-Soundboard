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
        VStack(alignment: .leading) {
            HStack(spacing: 14) {
                Text("CL4SH ROY4L3")
                    .foregroundColor(.white)
                    .font(.system(size: 46))

                Text("SOUNDBOARD")
                    .foregroundColor(Color(hex: 0xF7AD18))
                    .font(.custom("Times", size: 46))
                    .italic()

                Spacer()

                Button {
                    withAnimation {
                        model.isOn.toggle()
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

            SoundboardView(model: model)

            EmotesView()
        }
        .padding(24)
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
