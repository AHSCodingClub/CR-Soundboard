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
                    
                    ForEach(column.slots) { slot in
                        
                        Color.gray
                    }
                }
            }
        }
    }
}

struct SoundboardColumnHeader: View {
    var columnIndex: Int
    
    var body: some View {
        Text("\(columnIndex)")
            .font(.system(size: 20))
            .padding(16)
            .background(.white)
            .cornerRadius(16)
    }
}
