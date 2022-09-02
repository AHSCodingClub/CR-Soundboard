//
//  EmotesView.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import SwiftUI

struct EmotesView: View {
    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(Shared.emotes) { emote in

                    Button {
                        print("emote: \(emote)")
                        if let url = emote.url {
                            AudioPlayer.play(url: url)
                        }
                    } label: {
                        Image(emote.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
            .padding(.horizontal, 24)
        }
        .frame(maxHeight: 400)
        .background(
            Color(hex: 0xEEEEEE)
        )
        .cornerRadius(24, corners: [.topLeft, .topRight])
        .shadow(
            color: .black.opacity(0.75),
            radius: 32,
            x: 0,
            y: 3
        )
    }
}
