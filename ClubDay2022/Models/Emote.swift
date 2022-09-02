//
//  Emote.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import SwiftUI

struct Emote: Identifiable, Equatable {
    var id: String {
        name
    }

    var name: String
    var audioFileName: String
}

extension Emote {
    var url: URL? {
        print("getting rl...")
        if let path = Bundle.main.path(forResource: audioFileName, ofType: "mp3") {
            let url = URL(fileURLWithPath: path)

            print("return url")
            return url
        }
        return nil
    }
}
