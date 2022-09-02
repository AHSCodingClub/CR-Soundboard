//
//  Shared.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import AVFoundation
import SwiftUI

enum Shared {
    // An array of all players stored in the pool
    static var players: [AVAudioPlayer] = []

    static let emotes: [Emote] = [
        .init(name: "Cake_Giant", audioFileName: "Heheheha sound affect"),
        .init(name: "Error_Mini_PEKKA", audioFileName: "clash Royale sad emote"),
        .init(name: "Error_Mini_PEKKA", audioFileName: "clash Royale sad emote"),
        .init(name: "Error_Mini_PEKKA", audioFileName: "clash Royale sad emote"),
    ]
}
