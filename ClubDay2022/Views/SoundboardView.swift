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
                    SoundboardColumnHeader(
                        model: model,
                        columnIndex: columnIndex
                    )
                    .padding(.bottom, 12)

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
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.green.opacity(0.3))

                            .padding(-10)
                    }
                }
                .overlay {
                    if model.currentColumnIndex == columnIndex {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.green, lineWidth: 5)
                            .padding(-10)
                    }
                }
                .zIndex(model.currentColumnIndex == columnIndex ? 1 : 0)
            }
        }
        .padding(20)
        .background(alignment: .top) {
            Color(hex: 0xAF7C47)
                .frame(height: 67)
        }
        .background(
            Color(hex: 0x674D3A)
        )
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
                    VStack {
                        Templates.MenuItem {
                            withAnimation {
                                slot.selectedEmote = nil
                            }
                        } label: { pressed in
                            Text("Remove Emote")
                                .font(.custom("Galpon-Black", size: 22))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 12)
                                .background(pressed ? Templates.buttonHighlightColor : .clear)
                                .background(Color.blue)
                                .cornerRadius(12)
                        }
                    }
                    .padding(16)
                    .background(UIColor.systemBlue.toColor(.black, percentage: 0.1).color)
                } label: { fade in
                    base
                        .overlay {
                            image(selectedEmote: selectedEmote)
                        }
                        .cornerRadius(12)
                }

            } else if let emote = model.selectedEmote {
                button(selectedEmote: emote)
                    .cornerRadius(12)
            } else {
                Templates.Menu {
                    VStack {
                        Templates.MenuItem {
                            withAnimation {
                                slot.selectedEmote = nil
                            }
                        } label: { pressed in
                            Text("Select an emote on the right first!")
                                .multilineTextAlignment(.center)
                                .font(.custom("Galpon-Black", size: 22))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal, 20)
                                .padding(.vertical, 12)
                                .background(pressed ? Templates.buttonHighlightColor : .clear)
                                .background(Color.blue)
                                .cornerRadius(12)
                        }
                    }
                    .padding(16)
                    .background(UIColor.systemBlue.toColor(.black, percentage: 0.1).color)
                } label: { fade in
                    base
                        .cornerRadius(12)
                }
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
    }

    func button(selectedEmote: Emote) -> some View {
        Button {
            withAnimation {
                slot.selectedEmote = selectedEmote
            }
            model.selectedEmote = nil

        } label: {
            VStack {
                if slot.selectedEmote != nil {
                    Color.green
                } else {
                    base
                }
            }
            .overlay {
                if pulseAnimationOn {
                    Color.green.opacity(0.5)
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
    @ObservedObject var model: ViewModel
    var columnIndex: Int

    var body: some View {
        Button {
            if let currentColumnIndex = model.currentColumnIndex,
                currentColumnIndex == columnIndex
            {
                model.currentColumnIndex = nil
                // remove highlight when selecting an already-active column
            } else {
                model.currentColumnIndex = columnIndex
                model.playCurrentColumn()
            }

        } label: {
            Text("\(columnIndex + 1)")
                .font(.custom("Galpon-Black", size: 24, relativeTo: .title2))
                .padding(.horizontal, 16)
                .padding(.vertical, 4)
                .frame(maxWidth: .infinity)
                .background(.white)
                .cornerRadius(12)
                .foregroundColor(.black)
        }
    }
}
