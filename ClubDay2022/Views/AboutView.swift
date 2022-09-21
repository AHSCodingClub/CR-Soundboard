//
//  AboutView.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/20/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//
    
import SwiftUI

struct AboutView: View {
    @Binding var showingAbout: Bool
    
    var members: [String] = [
        "Leo W.",
        "Amir S.",
        "Clement C.",
        "Eleni C.",
        "James C.",
        "Orion E.",
        "Ariel S.",
        "Caden S.",
        "Michael B.",
        "Ryan M.",
        "Tyler G.",
        "Riley B.",
        "Michael W.",
        "Luigi M.",
        "Ariston S.",
    ]
    
    let columns = [
        GridItem(.adaptive(minimum: 140))
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("About")
                    .font(.custom("Galpon-Black", size: 36))
                    
                Spacer()
                
                Button {
                    showingAbout = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.system(size: 24, weight: .bold))
                        .frame(width: 50, height: 50)
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(12)
                }
            }
            .padding(20)
            .background(
                Color.white.opacity(0.1)
                    .ignoresSafeArea()
            )
            
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    AboutSectionView(
                        title: "About This App",
                        description: "Just an emote soundboard. Tap an emote on the right, then select a slot to drop it."
                    )
                    
                    VStack(alignment: .leading, spacing: 20) {
                        AboutSectionView(
                            title: "Made By",
                            description: "AHS Coding Club, Fall 2022 Project"
                        )
                        
                        HStack(alignment: .top, spacing: 48) {
                            VStack(alignment: .leading, spacing: 6) {
                                Text("Club Officers")
                                    .font(.custom("Galpon-Black", size: 24))
                                
                                Text("President: Andrew Zheng")
                                Text("VP: Krishna Ram")
                                Text("Secretary: H. Kamran")
                                Text("Treasurer: Isaac Wang")
                            }
                            .font(.title3)
                            
                            VStack(alignment: .leading, spacing: 6) {
                                Text("Club Members")
                                    .font(.custom("Galpon-Black", size: 24))
                                
                                LazyVGrid(columns: columns) {
                                    ForEach(members, id: \.self) { member in
                                        Text(member)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                }
                                
                            }
                            .font(.title3)
                        }
                    }
                    
                    AboutSectionView(
                        title: "Disclaimer",
                        description: "This material is unofficial and is not endorsed by Supercell. For more information see Supercell's Fan Content Policy: www.supercell.com/fan-content-policy."
                    )
                    .tint(.green) /// for the link coloring
                    
                    AboutSectionView(
                        title: "Source Code",
                        description: "Released under MIT license on GitHub - that means you can do whatever you want with it! [https://github.com/AHSCodingClub/ClubDay2022-Fall](https://github.com/AHSCodingClub/ClubDay2022-Fall)."
                    )
                    .tint(.green) /// for the link coloring
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(20)
            }
        }
        .foregroundColor(.white)
        
        .background(
            Color(hex: 0x0060C2)
                .ignoresSafeArea()
        )
    }
}

struct AboutSectionView: View {
    var title: String
    var description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(title)
                .font(.custom("Galpon-Black", size: 32))
                
            Text(.init(description)) /// extra init for markdown/links
                .font(.custom("Galpon-Black", size: 24))
                .opacity(0.75)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
