//
//  SoundboardView.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//
    
import Popovers
import SwiftUI

struct SoundboardView: View {
    @ObservedObject var model: ViewModel
    
    var body: some View {
        HStack {
            ForEach($model.columns) { $column in

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
        VStack {
            if let selectedEmote = slot.selectedEmote {
                Templates.Menu {
                    Templates.MenuItem {
                        print("pressed!")
                    } label: { pressed in
                        Text("Remove Emote")
                            .font(.custom("Galpon-Black", size: 24))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 24)
                            .padding(.vertical, 16)
                            .background(pressed ? Templates.buttonHighlightColor : .clear)
                            .background(Color.blue)
                    }

                } label: { fade in
                    base.overlay {
                        image(selectedEmote: selectedEmote)
                    }
                }

            } else {
                button
            }
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
    
    var base: some View {
        VStack {
            if isEvenColumn {
                Color.white
            } else {
                UIColor(hex: 0xE1E1E1).color
            }
        }
        .cornerRadius(16)
    }
    
    var button: some View {
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
                    base
                }
            }
        }
    }
    
    func image(selectedEmote: Emote) -> some View {
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
    }
}

struct SoundboardColumnHeader: View {
    var columnIndex: Int
    
    var body: some View {
        Text("\(columnIndex + 1)")
            .font(.custom("Galpon-Black", size: 36))
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(16)
    }
}
