//
//  VM+Audio.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import AVFoundation
import UIKit

/// from https://www.oreilly.com/library/view/ios-swift-game/9781491920794/ch04.html
class AudioPlayer: NSObject {
    // Given the URL of a sound file, either create or reuse an audio player
    class func play(url: URL) {
        // Try to find a player that can be reused and is not playing
        let availablePlayers = Shared.players.filter { player -> Bool in
            player.isPlaying == false && player.url == url
        }

        // If we found one, return it
        if let playerToUse = availablePlayers.first {
            print("Reusing player for \(url.lastPathComponent)")
            playerToUse.play()
        }

        do {
            let newPlayer = try AVAudioPlayer(contentsOf: url)
            newPlayer.play()
            Shared.players.append(newPlayer)
        } catch {
            print("Couldn't load \(url.lastPathComponent): \(error)")
        }
    }
}
