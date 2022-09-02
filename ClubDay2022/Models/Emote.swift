//
//  Emote.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import SwiftUI

struct Emote: Identifiable, Equatable {
    let id = UUID()

    var name: String
    var audioFileName: String
}

extension Emote {
    var url: URL? {
        if let path = Bundle.main.path(forResource: audioFileName, ofType: "mp3") {
            let url = URL(fileURLWithPath: path)

            return url
        }
        return nil
    }
}
