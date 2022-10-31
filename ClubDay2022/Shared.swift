//
//  Shared.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//
//imports
import AVFoundation
import SwiftUI

enum Shared {
    // An array of all audio players stored in the pool
    static var players: [AVAudioPlayer] = []

    /// All emotes
    static let emotes: [Emote] = [
        // Favorites
        .init(name: "Laughing_King", audioFileName: "Laughing King Emote", audioFileExtension: "m4a"),
        .init(name: "Angry_King", audioFileName: "Angry King Emote", audioFileExtension: "m4a"),
        .init(name: "Surrender_Goblin", audioFileName: "Goblin White Flag Emote", audioFileExtension: "m4a"),
        .init(name: "Dab_Wizard", audioFileName: "Wizard Dap Emote", audioFileExtension: "m4a"),
        .init(name: "Yawn_Princess", audioFileName: "Yawning Princess Emote", audioFileExtension: "m4a"),
        .init(name: "Dance_Mini_PEKKA", audioFileName: "Mini Pekka Pan Cake Emote", audioFileExtension: "m4a"),

        // alphabetical
        .init(name: "10th_Anniversary_Supercel_King", audioFileName: "Laughing King Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Angry_King", audioFileName: "Angry King Emote", audioFileExtension: "m4a"),
        .init(name: "Angry_Princess", audioFileName: "Angry Princess Emote", audioFileExtension: "m4a"),
        .init(name: "Arrow_Dark_Prince", audioFileName: "Dark Prince Arrow Emote", audioFileExtension: "m4a"),
        .init(name: "Baby_Dragon_Kissing", audioFileName: "Laughing King Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Baby_Dragon_Licking", audioFileName: "Laughing King Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Blink_Inferno_Tower", audioFileName: "Inferno Tower Emote", audioFileExtension: "m4a"),
        .init(name: "Bored_Valkyrie", audioFileName: "Valkyrie Emote", audioFileExtension: "m4a"),
        .init(name: "Cake_Rascal", audioFileName: "Laughing King Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Champion_Trophy_Goblin", audioFileName: "Laughing King Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Confetti_Goblin", audioFileName: "Laughing King Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Crying_King", audioFileName: "Crying King Emote", audioFileExtension: "m4a"),
        .init(name: "Crying_Log", audioFileName: "Laughing King Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Crying_Skeleton", audioFileName: "Crying Skeleton Emote", audioFileExtension: "m4a"),
        .init(name: "Dab_Wizard", audioFileName: "Wizard Dap Emote", audioFileExtension: "m4a"),
        .init(name: "Dacing_Dart_Goblin", audioFileName: "Laughing King Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Dacing_Giant_Goblin", audioFileName: "Crying Skeleton Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Dance_Mini_PEKKA", audioFileName: "Pig Screaming Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Dark_Price_Crying", audioFileName: "E Wizard Getting Current Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Deal_With_It_Goblin", audioFileName: "Goblin Glasses Emote", audioFileExtension: "m4a"),
        .init(name: "Eating_Giant", audioFileName: "Giant Eating Meat Emote", audioFileExtension: "m4a"),
        .init(name: "Error_Mini_PEKKA", audioFileName: "Giant Crushing Rock Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Eye_Twitch_Goblin", audioFileName: "Angry Goblin Emote", audioFileExtension: "m4a"),
        .init(name: "Finger_CRL", audioFileName: "Giant thumbs Up Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Flame_Wizard", audioFileName: "Wizard Blowing Flame Emote", audioFileExtension: "m4a"),
        .init(name: "Fuse_Bomber", audioFileName: "Bomber Giving Bomb Emote", audioFileExtension: "m4a"),
        .init(name: "Gamer_King", audioFileName: "Goblin Finger Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Gem_Royal_Ghost", audioFileName: "Royal Ghost Exclusive Emote", audioFileExtension: "m4a"),
        .init(name: "Goblin_Top_Hat_Dance", audioFileName: "Goblin Hands on Face Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Hammer_Hog", audioFileName: "Hog Rider Hammer Emote", audioFileExtension: "m4a"),
        .init(name: "Happy_Baby_Dragon", audioFileName: "Baby Dragon Laughing Emote", audioFileExtension: "m4a"),
        .init(name: "Happy_Goblin", audioFileName: "Goblin Pretty Please Emote", audioFileExtension: "m4a"),
        .init(name: "Happy_Hoggy", audioFileName: "Goblin Mean Laugh Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Happy_Royal_Ghost", audioFileName: "Laughing King Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Idea_Skeleton", audioFileName: "Skeleton Bulb Emote", audioFileExtension: "m4a"),
        .init(name: "Interrupted_Infernal_Dragon", audioFileName: "Goblin thumbs Up Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Kiss_Goblin", audioFileName: "Goblin Kissing Emote", audioFileExtension: "m4a"),
        .init(name: "Kiss_Log", audioFileName: "Goblin Victory Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Kiss_Night_Witch", audioFileName: "Golden Hog Rider Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Kiss_Princess", audioFileName: "Princess Kissing Emote", audioFileExtension: "m4a"),
        .init(name: "Laugh_Ewiz", audioFileName: "Laughing Electro Wizard Emote", audioFileExtension: "m4a"),
        .init(name: "Laughing_Goblin", audioFileName: "Goblin Mean Laugh Emote", audioFileExtension: "m4a"),
        .init(name: "Laughing_King", audioFileName: "Laughing King Emote", audioFileExtension: "m4a"),
        .init(name: "Lion_Dance_Hoggy", audioFileName: "Hunter Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Logmas", audioFileName: "Ice Spirit Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Mega_Knight_Smash", audioFileName: "Ice Wizard Christmas Emote", audioFileExtension: "m4a"),
        .init(name: "Mirror_Prince", audioFileName: "Inferno Tower Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Muscle_Goblin", audioFileName: "Goblin Bicep Emote", audioFileExtension: "m4a"),
        .init(name: "Muscle_Princess", audioFileName: "Knight Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Musket_Musketeer", audioFileName: "Musketeer Emote", audioFileExtension: "m4a"),
        .init(name: "Mustache_Prince", audioFileName: "Prince Emote", audioFileExtension: "m4a"),
        .init(name: "Night_Witch_Catrina", audioFileName: "Hog Rider Kissing Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Painting_Ram_Rider", audioFileName: "Laughing Goblin Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Pancakes_Mini_PEKKA", audioFileName: "Mini Pekka Pan Cake Emote", audioFileExtension: "m4a"),
        .init(name: "Pick_Barbarian", audioFileName: "Barbarian Poking Nose Emote", audioFileExtension: "m4a"),
        .init(name: "Pirate_King", audioFileName: "Mini Pekka Pan Cake Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Radiant_Log", audioFileName: "Minion Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Scream_Hog", audioFileName: "Hog Rider Screaming Emote", audioFileExtension: "m4a"),
        .init(name: "Scream_Hoggy", audioFileName: "Nervous Princess Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Sea_Goblin", audioFileName: "Pig Dragon Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "ShakingFish", audioFileName: "Pig Eating Noodles Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Skeleton_Snorkel", audioFileName: "Pig Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Slowmo_Archer", audioFileName: "Pig Helmet Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Spatula_Mini_PEKKA", audioFileName: "Mini Pekka Pan Cake Emote", audioFileExtension: "m4a"),
        .init(name: "Surprise_Prince", audioFileName: "Prince Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Surrender_Goblin", audioFileName: "Goblin White Flag Emote", audioFileExtension: "m4a"),
        .init(name: "This_Is_Fine_Goblin", audioFileName: "Goblin Not Caring Emote", audioFileExtension: "m4a"),
        .init(name: "Thumbs-Up_Giant", audioFileName: "Giant thumbs Up Emote", audioFileExtension: "m4a"),
        .init(name: "Thumbs-Up_King", audioFileName: "Princess Victory Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Thumbs-Up_Princess", audioFileName: "Princess Thumbs Up Emote", audioFileExtension: "m4a"),
        .init(name: "Thundering_Edragon", audioFileName: "Ram Rider Goat Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Treasure_Rascal", audioFileName: "Royal Ghost Exclusive Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Trophy_Goblin", audioFileName: "Goblin Kissing Trophy Emote", audioFileExtension: "m4a"),
        .init(name: "Trumpet_Princess", audioFileName: "Skeleton Heart Emote", audioFileExtension: "m4a"),  // missing audio
        .init(name: "Whistling_Princess", audioFileName: "Princess Whistling Emote", audioFileExtension: "m4a"),
        .init(name: "Yawn_Princess", audioFileName: "Yawning Princess Emote", audioFileExtension: "m4a"),

        // === NEW ===
        .init(name: "", audioFileName: "NR1", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_mad_01", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Party", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_congrats_04", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Dark Prince", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "DealWithIt", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Prince", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Nose", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Yawn", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_mad_02", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "king_mad_03", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Laugh", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "BabyDragon", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Festive", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_congrats_03", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Knight", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "GrassEating", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_congrats_02", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Eating", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Rock", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Loving", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_mad_04", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Valkyrie", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_congrats_01", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "FireOff", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Scream", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "IceSpirit", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Fireworks", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_laughter_04", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Tongue", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Musketeer", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Bow", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Royal Ghost", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_crying_04", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Trophy", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Happy", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Sleep", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_laughter_03", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "king_crying_01", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Thumbs", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Minion", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_laughter_02", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Whistle", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Muscle", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_crying_02", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "WhiteFlag", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_crying_03", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Crying", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_laughter_01", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Pancakes", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Teeth", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_happy_02", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "king_happy_03", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "IceWizard", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "V", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Bandit", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Eyes", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_happy_01", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Shocked", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Inferno", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Worried", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Idea", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "RamRider", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Sunglasses", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Burn", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Gold", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "king_happy_04", audioFileExtension: "ogg"),
        .init(name: "", audioFileName: "Stab", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Crown", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Dab", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "NoIdea", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Bomber", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Cringe", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Sword", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Thinking", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Kiss", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "HeadPancake", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Angry", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "RascalGirl", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Facepalm", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Giant", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "FireOn", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Evil", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Goblin", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Eat", audioFileExtension: "wav"),
        .init(name: "", audioFileName: "Head", audioFileExtension: "wav"),
    ]
}
