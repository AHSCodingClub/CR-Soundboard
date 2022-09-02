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
    /// An array of all players stored in the pool
    static var players: [AVAudioPlayer] = []

    /// All emotes
    static let emotes: [Emote] = [
        .init(name: "Laughing_King", audioFileName: "Laughing King Emote"),
        .init(name: "Angry_King", audioFileName: "Angry King Emote"),
        .init(name: "Crying_King", audioFileName: "Crying King Emote"),
        .init(name: "Surrender_Goblin", audioFileName: "Goblin White Flag Emote"),
        .init(name: "Flame_Wizard", audioFileName: "Flame"),
        .init(name: "Dab_Wizard", audioFileName: "Wizard Dap Emote"),
        .init(name: "Yawn_Princess", audioFileName: "Yawning Princess Emote"),
        .init(name: "Blink_Inferno_Tower", audioFileName: "Inferno Tower Emote"),
        .init(name: "Bored_Valkyrie", audioFileName: "Valkyrie Emote"),
        .init(name: "Dance_Mini_PEKKA", audioFileName: "Mini Pekka Pan Cake Emote"),
        .init(name: "Angry_Princess", audioFileName: "Angry Barbarian Emote"),
        .init(name: "Arrow_Dark_Prince", audioFileName: "Angry Giant Emote"),
        .init(name: "Baby_Dragon_Kissing", audioFileName: "Baby Dragon Laughing Emote"),
        .init(name: "Baby_Dragon_Licking", audioFileName: "Angry King Emote"),
        .init(name: "Cake_Rascal", audioFileName: "Baby Dragon Laughing Emote"),
        .init(name: "Champion_Trophy_Goblin", audioFileName: "Bandit Dash Emote"),
        .init(name: "Confetti_Goblin", audioFileName: "Bandit Screaming Emote"),
        .init(name: "Crying_Log", audioFileName: "Barbarian Sword Emote"),
        .init(name: "Crying_Skeleton", audioFileName: "Bomber Giving Bomb Emote"),
        .init(name: "Dacing_Dart_Goblin", audioFileName: "Crying King Emote"),
        .init(name: "Dacing_Giant_Goblin", audioFileName: "Crying Skeleton Emote"),
        .init(name: "Dark_Price_Crying", audioFileName: "E Wizard Getting Current Emote"),
        .init(name: "Deal_With_It_Goblin", audioFileName: "Electro Wizard Bulb Emote"),
        .init(name: "Eating_Giant", audioFileName: "Electro Wizard thumbs Up Emote"),
        .init(name: "Error_Mini_PEKKA", audioFileName: "Giant Crushing Rock Emote"),
        .init(name: "Eye_Twitch_Goblin", audioFileName: "Giant Eating Meat Emote"),
        .init(name: "Finger_CRL", audioFileName: "Giant thumbs Up Emote"),
        .init(name: "Fuse_Bomber", audioFileName: "Goblin Biting Nails Emote"),
        .init(name: "Gamer_King", audioFileName: "Goblin Finger Emote"),
        .init(name: "Gem_Royal_Ghost", audioFileName: "Goblin Glasses Emote"),
        .init(name: "Goblin_Top_Hat_Dance", audioFileName: "Goblin Hands on Face Emote"),
        .init(name: "Hammer_Hog", audioFileName: "Burning Goblin Emote"),
        .init(name: "Happy_Baby_Dragon", audioFileName: "Goblin Kissing Trophy Emote"),
        .init(name: "Happy_Goblin", audioFileName: "Goblin Knife Emote"),
        .init(name: "Happy_Hoggy", audioFileName: "Goblin Mean Laugh Emote"),
        .init(name: "Happy_Royal_Ghost", audioFileName: "Goblin Not Caring Emote"),
        .init(name: "Idea_Skeleton", audioFileName: "Goblin Pretty Please Emote"),
        .init(name: "Interrupted_Infernal_Dragon", audioFileName: "Goblin thumbs Up Emote"),
        .init(name: "Kiss_Goblin", audioFileName: "Goblin Tongue Emote"),
        .init(name: "Kiss_Log", audioFileName: "Goblin Victory Emote"),
        .init(name: "Kiss_Night_Witch", audioFileName: "Golden Hog Rider Emote"),
        .init(name: "Kiss_Princess", audioFileName: "Hog Rider Hammer Emote"),
        .init(name: "Laugh_Ewiz", audioFileName: "Hog Rider Kissing Emote"),
        .init(name: "Laughing_Goblin", audioFileName: "Hog Rider Screaming Emote"),
        .init(name: "Laughing_King", audioFileName: "Hog Rider thinking Emote"),
        .init(name: "Lion_Dance_Hoggy", audioFileName: "Hunter Emote"),
        .init(name: "Logmas", audioFileName: "Ice Spirit Emote"),
        .init(name: "Mega_Knight_Smash", audioFileName: "Ice Wizard Christmas Emote"),
        .init(name: "Mirror_Prince", audioFileName: "Inferno Tower Emote"),
        .init(name: "Muscle_Goblin", audioFileName: "King with Sign Exclusive Emote"),
        .init(name: "Muscle_Princess", audioFileName: "Knight Emote"),
        .init(name: "Musket_Musketeer", audioFileName: "Knight Phew Exclusive Emote"),
        .init(name: "Mustache_Prince", audioFileName: "Laughing Barbarian Emote"),
        .init(name: "Night_Witch_Catrina", audioFileName: "Laughing Electro Wizard Emote"),
        .init(name: "Painting_Ram_Rider", audioFileName: "Laughing Goblin Emote"),
        .init(name: "Pancakes_Mini_PEKKA", audioFileName: "Laughing King Emote"),
        .init(name: "Pick_Barbarian", audioFileName: "Magic Archer Emote"),
        .init(name: "Pirate_King", audioFileName: "Mini Pekka Pan Cake Emote"),
        .init(name: "Radiant_Log", audioFileName: "Minion Emote"),
        .init(name: "Scream_Hog", audioFileName: "Musketeer Emote"),
        .init(name: "Scream_Hoggy", audioFileName: "Nervous Princess Emote"),
        .init(name: "Sea_Goblin", audioFileName: "Pig Dragon Emote"),
        .init(name: "ShakingFish", audioFileName: "Pig Eating Noodles Emote"),
        .init(name: "Skeleton_Snorkel", audioFileName: "Pig Emote"),
        .init(name: "Slowmo_Archer", audioFileName: "Pig Helmet Emote"),
        .init(name: "Spatula_Mini_PEKKA", audioFileName: "Pig Screaming Emote"),
        .init(name: "Surprise_Prince", audioFileName: "Prince Emote"),
        .init(name: "Surrender_Goblin", audioFileName: "Princess Arrow Emote"),
        .init(name: "This_Is_Fine_Goblin", audioFileName: "Princess Kissing Emote"),
        .init(name: "Thumbs-Up_Giant", audioFileName: "Princess Thumbs Up Emote"),
        .init(name: "Thumbs-Up_King", audioFileName: "Princess Victory Emote"),
        .init(name: "Thumbs-Up_Princess", audioFileName: "Princess Whistling Emote"),
        .init(name: "Thundering_Edragon", audioFileName: "Ram Rider Goat Emote"),
        .init(name: "Treasure_Rascal", audioFileName: "Royal Ghost Exclusive Emote"),
        .init(name: "Trophy_Goblin", audioFileName: "Skeleton Bulb Emote"),
        .init(name: "Trumpet_Princess", audioFileName: "Skeleton Heart Emote"),
        .init(name: "Whistling_Princess", audioFileName: "Skeleton Putting Head Back Emote"),

        .init(name: "10th_Anniversary_Supercel_King", audioFileName: "Valkyrie Emote"),
        .init(name: "Angry_King", audioFileName: "Wizard Blowing Flame Emote"),
        .init(name: "Angry_Princess", audioFileName: "Wizard Dap Emote"),
        .init(name: "Arrow_Dark_Prince", audioFileName: "Wizard Flame Emote"),
    ]
}
