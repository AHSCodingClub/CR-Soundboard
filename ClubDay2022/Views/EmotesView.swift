//
//  EmotesView.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import SwiftUI

struct EmotesView: View {
    @ObservedObject var model: ViewModel

    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(Shared.emotes) { emote in

                    Button {
                        withAnimation {
                            if
                                let selectedEmote = model.selectedEmote,
                                selectedEmote == emote
                            {
                                model.selectedEmote = nil
                            } else {
                                model.selectedEmote = emote
                            }
                        }

                        if let url = emote.url {
                            AudioPlayer.play(url: url)
                        }
                    } label: {
                        Image(emote.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background {
                                if model.selectedEmote == emote {
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color.green, lineWidth: 6)
                                        .background(
                                            RoundedRectangle(cornerRadius: 16)
                                                .fill(.green.opacity(0.25))
                                        )
                                        .padding(-6)
                                }
                            }
                    }
                }
            }
            .padding(24)
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
