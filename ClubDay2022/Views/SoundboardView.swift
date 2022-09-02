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
//            ForEach(Array(zip(model.columns.indices, model.columns)), id: \.1.id) { columnIndex, column in
            
            ForEach($model.columns) { $column in

//                let columnIndex: Int = 0
                let columnIndex = model.columns.firstIndex(where: { $0.id == column.id }) ?? 0
                
                VStack {
                    SoundboardColumnHeader(columnIndex: columnIndex)
                    let isEvenColumn = columnIndex % 2 == 0
                    
                    ForEach($column.slots) { $slot in
                        SoundboardSlotView(
                            model: model,
                            isEvenColumn: isEvenColumn,
                            slot: $slot
                        )
                    }
                }
                .background {
                    if model.currentColumnIndex == columnIndex {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.green.opacity(0.3))
                            
                            .padding(-10)
                    }
                }
                .overlay {
                    if model.currentColumnIndex == columnIndex {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.green, lineWidth: 10)
                            .padding(-10)
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

struct SoundboardSlotView: View {
    @ObservedObject var model: ViewModel
    var isEvenColumn: Bool
    @Binding var slot: Slot
    
    @State var pulseAnimationOn = false
    
    var body: some View {
        Button {
            if let emote = model.selectedEmote {
                withAnimation {
                    slot.selectedEmote = emote
                }
                model.selectedEmote = nil
            }
        } label: {
            VStack {
                if slot.selectedEmote != nil {
                    Color.green
                } else {
                    if isEvenColumn {
                        Color.white
                    } else {
                        UIColor(hex: 0xE1E1E1).color
                    }
                }
            }
            .overlay {
                if let selectedEmote = slot.selectedEmote {
                    Image(selectedEmote.name)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .shadow(
                            color: .black.opacity(0.5),
                            radius: 6,
                            x: 0,
                            y: 2
                        )
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                } else if pulseAnimationOn {
                    Color.green.opacity(0.5)
                }
            }
            .cornerRadius(16)
        }
        .onChange(of: model.selectedEmote) { emote in
            if emote != nil, slot.selectedEmote == nil {
                withAnimation(.linear(duration: 0.6).repeatForever()) {
                    pulseAnimationOn = true
                }
            } else {
                pulseAnimationOn = false
            }
        }
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
