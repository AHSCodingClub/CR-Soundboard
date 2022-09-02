//
//  SoundboardView.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//
    
import SwiftUI

struct SoundboardView: View {
    @ObservedObject var model: ViewModel
    
    var body: some View {
        HStack {
            ForEach(Array(zip(model.columns.indices, model.columns)), id: \.1.id) { columnIndex, column in

                VStack {
                    SoundboardColumnHeader(columnIndex: columnIndex)
                    
                    let isEvenColumn = model.numberOfColumns % (columnIndex + 1) == 0
                    
                    ForEach(column.slots) { slot in
                        VStack {
                            if isEvenColumn {
                                Color.white
                            } else {
                                UIColor(hex: 0xE1E1E1).color
                            }
                        }.cornerRadius(16)
                    }
                }
            }
        }
        .padding(20)
        .background(
            Color(hex: 0x674D3A)
        )
        .cornerRadius(24)
    }
}

struct SoundboardColumnHeader: View {
    var columnIndex: Int
    
    var body: some View {
        Text("\(columnIndex)")
            .font(.system(size: 24).bold())
            .padding(16)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(16)
    }
}
