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
            LazyVGrid(columns: columns, spacing: 10) {
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
            .padding(.horizontal)
        }
        .frame(maxHeight: 200)
    }
}
