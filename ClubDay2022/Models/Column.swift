//
//  Column.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import SwiftUI

struct Column: Identifiable {
    let id = UUID()
    var slots = [Slot]()
}

extension Column {
    func playAllInColumn() {
        for slot in slots {
            if let selectedEmote = slot.selectedEmote {
                if let url = selectedEmote.url {
                    AudioPlayer.play(url: url)
                }
            }
        }
    }
}
