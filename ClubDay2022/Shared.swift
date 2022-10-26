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
    // An array of all audio players stored in the pool
    static var players: [AVAudioPlayer] = []

    /// All emotes
    // Exactly half (38/76) are missing the correct audio
    static let emotes: [Emote] = [
        // favorites
        .init(name: "Laughing_King", audioFileName: "Laughing King Emote"),
        .init(name: "Angry_King", audioFileName: "Angry King Emote"),
        .init(name: "Surrender_Goblin", audioFileName: "Goblin White Flag Emote"),
        .init(name: "Dab_Wizard", audioFileName: "Wizard Dap Emote"),
        .init(name: "Yawn_Princess", audioFileName: "Yawning Princess Emote"),
        .init(name: "Dance_Mini_PEKKA", audioFileName: "Mini Pekka Pan Cake Emote"),
        
        // alphabetical
        .init(name: "10th_Anniversary_Supercel_King", audioFileName: "Laughing King Emote"), // missing audio
        .init(name: "Angry_King", audioFileName: "Angry King Emote"),
        .init(name: "Angry_Princess", audioFileName: "Angry Princess Emote"),
        .init(name: "Arrow_Dark_Prince", audioFileName: "Dark Prince Arrow Emote"),
        .init(name: "Baby_Dragon_Kissing", audioFileName: "Laughing King Emote"), // missing audio
        .init(name: "Baby_Dragon_Licking", audioFileName: "Laughing King Emote"), // missing audio
        .init(name: "Blink_Inferno_Tower", audioFileName: "Inferno Tower Emote"),
        .init(name: "Bored_Valkyrie", audioFileName: "Valkyrie Emote"),
        .init(name: "Cake_Rascal", audioFileName: "Laughing King Emote"), // missing audio
        .init(name: "Champion_Trophy_Goblin", audioFileName: "Laughing King Emote"), // missing audio
        .init(name: "Confetti_Goblin", audioFileName: "Laughing King Emote"), // missing audio
        .init(name: "Crying_King", audioFileName: "Crying King Emote"), 
        .init(name: "Crying_Log", audioFileName: "Laughing King Emote"), // missing audio
        .init(name: "Crying_Skeleton", audioFileName: "Crying Skeleton Emote"),
        .init(name: "Dab_Wizard", audioFileName: "Wizard Dap Emote"),
        .init(name: "Dacing_Dart_Goblin", audioFileName: "Laughing King Emote"), // missing audio
        .init(name: "Dacing_Giant_Goblin", audioFileName: "Crying Skeleton Emote"), // missing audio
        .init(name: "Dance_Mini_PEKKA", audioFileName: "Pig Screaming Emote"), // missing audio
        .init(name: "Dark_Price_Crying", audioFileName: "E Wizard Getting Current Emote"), // missing audio
        .init(name: "Deal_With_It_Goblin", audioFileName: "Goblin Glasses Emote"),
        .init(name: "Eating_Giant", audioFileName: "Giant Eating Meat Emote"),
        .init(name: "Error_Mini_PEKKA", audioFileName: "Giant Crushing Rock Emote"), // missing audio
        .init(name: "Eye_Twitch_Goblin", audioFileName: "Angry Goblin Emote"),
        .init(name: "Finger_CRL", audioFileName: "Giant thumbs Up Emote"), // missing audio
        .init(name: "Flame_Wizard", audioFileName: "Wizard Blowing Flame Emote"),
        .init(name: "Fuse_Bomber", audioFileName: "Bomber Giving Bomb Emote"),
        .init(name: "Gamer_King", audioFileName: "Goblin Finger Emote"), // missing audio
        .init(name: "Gem_Royal_Ghost", audioFileName: "Royal Ghost Exclusive Emote"),
        .init(name: "Goblin_Top_Hat_Dance", audioFileName: "Goblin Hands on Face Emote"), // missing audio
        .init(name: "Hammer_Hog", audioFileName: "Hog Rider Hammer Emote"),
        .init(name: "Happy_Baby_Dragon", audioFileName: "Baby Dragon Laughing Emote"),
        .init(name: "Happy_Goblin", audioFileName: "Goblin Pretty Please Emote"),
        .init(name: "Happy_Hoggy", audioFileName: "Goblin Mean Laugh Emote"), // missing audio
        .init(name: "Happy_Royal_Ghost", audioFileName: "Laughing King Emote"), // missing audio
        .init(name: "Idea_Skeleton", audioFileName: "Skeleton Bulb Emote"),
        .init(name: "Interrupted_Infernal_Dragon", audioFileName: "Goblin thumbs Up Emote"), // missing audio
        .init(name: "Kiss_Goblin", audioFileName: "Goblin Kissing Emote"),
        .init(name: "Kiss_Log", audioFileName: "Goblin Victory Emote"), // missing audio
        .init(name: "Kiss_Night_Witch", audioFileName: "Golden Hog Rider Emote"), // missing audio
        .init(name: "Kiss_Princess", audioFileName: "Princess Kissing Emote"),
        .init(name: "Laugh_Ewiz", audioFileName: "Hog Rider Kissing Emote"), // missing audio
        .init(name: "Laughing_Goblin", audioFileName: "Goblin Mean Laugh Emote"),
        .init(name: "Laughing_King", audioFileName: "Laughing King Emote"),
        .init(name: "Lion_Dance_Hoggy", audioFileName: "Hunter Emote"), // missing audio
        .init(name: "Logmas", audioFileName: "Ice Spirit Emote"), // missing audio
        .init(name: "Mega_Knight_Smash", audioFileName: "Ice Wizard Christmas Emote"),
        .init(name: "Mirror_Prince", audioFileName: "Inferno Tower Emote"), // missing audio
        .init(name: "Muscle_Goblin", audioFileName: "Goblin Bicep Emote"),
        .init(name: "Muscle_Princess", audioFileName: "Knight Emote"), // missing audio
        .init(name: "Musket_Musketeer", audioFileName: "Musketeer Emote"),
        .init(name: "Mustache_Prince", audioFileName: "Prince Emote"),
        .init(name: "Night_Witch_Catrina", audioFileName: "Laughing Electro Wizard Emote"), // missing audio
        .init(name: "Painting_Ram_Rider", audioFileName: "Laughing Goblin Emote"), // missing audio
        .init(name: "Pancakes_Mini_PEKKA", audioFileName: "Mini Pekka Pan Cake Emote"),
        .init(name: "Pick_Barbarian", audioFileName: "Barbarian Poking Nose Emote"),
        .init(name: "Pirate_King", audioFileName: "Mini Pekka Pan Cake Emote"), // missing audio
        .init(name: "Radiant_Log", audioFileName: "Minion Emote"), // missing audio
        .init(name: "Scream_Hog", audioFileName: "Hog Rider Screaming Emote"),
        .init(name: "Scream_Hoggy", audioFileName: "Nervous Princess Emote"), // missing audio
        .init(name: "Sea_Goblin", audioFileName: "Pig Dragon Emote"), // missing audio
        .init(name: "ShakingFish", audioFileName: "Pig Eating Noodles Emote"), // missing audio
        .init(name: "Skeleton_Snorkel", audioFileName: "Pig Emote"), // missing audio
        .init(name: "Slowmo_Archer", audioFileName: "Pig Helmet Emote"), // missing audio
        .init(name: "Spatula_Mini_PEKKA", audioFileName: "Mini Pekka Pan Cake Emote"),
        .init(name: "Surprise_Prince", audioFileName: "Prince Emote"), // missing audio
        .init(name: "Surrender_Goblin", audioFileName: "Goblin White Flag Emote"),
        .init(name: "This_Is_Fine_Goblin", audioFileName: "Goblin Not Caring Emote"),
        .init(name: "Thumbs-Up_Giant", audioFileName: "Giant thumbs Up Emote"),
        .init(name: "Thumbs-Up_King", audioFileName: "Princess Victory Emote"), // missing audio
        .init(name: "Thumbs-Up_Princess", audioFileName: "Princess Thumbs Up Emote"),
        .init(name: "Thundering_Edragon", audioFileName: "Ram Rider Goat Emote"), // missing audio
        .init(name: "Treasure_Rascal", audioFileName: "Royal Ghost Exclusive Emote"), // missing audio
        .init(name: "Trophy_Goblin", audioFileName: "Goblin Kissing Trophy Emote"),
        .init(name: "Trumpet_Princess", audioFileName: "Skeleton Heart Emote"), // missing audio
        .init(name: "Whistling_Princess", audioFileName: "Princess Whistling Emote"),
        .init(name: "Yawn_Princess", audioFileName: "Yawning Princess Emote"),
    ]
}
