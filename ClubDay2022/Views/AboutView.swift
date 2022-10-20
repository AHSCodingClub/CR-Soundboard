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

    var officers: [(position: String, name: String)] = [
        ("President", "Andrew Zheng"),
        ("VP", "Krishna Ram"),
        ("Secretary", "H. Kamran"),
        ("Treasurer", "Isaac Wang"),
        ("Advisor", "Daniel Appel"),
    ]

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
        "Riley K.",
        "Michael W.",
        "Luigi M.",
        "Ariston S.",
        "Ben R.",
        "Ben T.",
        "Tyler T.",
        "Saylen C.",
        "Liam S.",
        "Marco G.",
        "Blake C.",
        "Nick M.",
        "Ryan F.",
        "Aidan L.",
    ]

    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]

    var body: some View {
        VStack(spacing: 0) {
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
                VStack(alignment: .leading, spacing: 30) {
                    AboutSectionView(
                        title: "About This App",
                        description:
                            "Just an emote soundboard. Tap an emote on the right, then select a slot to drop it."
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

                                VStack(alignment: .leading) {
                                    ForEach(officers, id: \.0) { officer in
                                        Text(officer.position)
                                            + Text(": ")
                                            + Text(officer.name)
                                            .foregroundColor(.white)
                                    }
                                }
                                .foregroundColor(.white.opacity(0.5))
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
                        description:
                            "This material is unofficial and is not endorsed by Supercell. For more information see Supercell's Fan Content Policy: www.supercell.com/fan-content-policy."
                    )

                    AboutSectionView(
                        title: "Source Code",
                        description:
                            "This is our first app! We made it to learn the Swift programming language. It's open source, so feel free to add whatever you want: [github.com/AHSCodingClub/ClubDay2022-Fall](https://github.com/AHSCodingClub/ClubDay2022-Fall)."
                    )

                    Text("[Privacy Policy](http://getfind.app/cr/privacypolicy)")
                        .font(.custom("Galpon-Black", size: 32))
                        .frame(maxWidth: .infinity, alignment: .leading)

                    Text("Thank you for everything Natalie. We'll always remember you 💚")
                        .font(.caption)
                }
                .tint(UIColor.systemGreen.toColor(.white, percentage: 0.25).color)
                // for the link coloring
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

            Text(.init(description)) // extra `init` for Markdown/links
                .font(.custom("Galpon-Black", size: 24))
                .opacity(0.75)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
