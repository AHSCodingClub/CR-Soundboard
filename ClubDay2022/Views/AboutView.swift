//
//  AboutView.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/20/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//
    

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("About")
                .font(.title)
            
            Text("This material is unofficial and is not endorsed by Supercell. For more information see Supercell's Fan Content Policy: www.supercell.com/fan-content-policy.")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
    }
}
