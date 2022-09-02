//
//  ViewModel.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import Combine
import SwiftUI

class ViewModel: ObservableObject {
    var numberOfColumns = 8
    @Published var currentColumnIndex: Int?
    @Published var columns = [Column]()
    @Published var isOn = false
    @Published var selectedEmote: Emote?

    var timerDuration = CGFloat(1)
    var cancellables = Set<AnyCancellable>()

    init() {
        let columns = (0 ..< 8).map { _ in
            Column(
                slots: [ /// 5 slots by default
                    .init(),
                    .init(),
                    .init(),
                    .init(),
                    .init(),
                ]
            )
        }
        self.columns = columns
    }

    func start() {
        Timer.publish(every: timerDuration, on: .main, in: .default)
            .autoconnect()
            .sink { [weak self] _ in
                guard let self = self else { return }

                if let currentColumnIndex = self.currentColumnIndex {
                    var newColumnIndex = currentColumnIndex + 1
                    if newColumnIndex >= self.numberOfColumns {
                        newColumnIndex = 0
                    }
                    self.currentColumnIndex = newColumnIndex
                } else {
                    self.currentColumnIndex = 0
                }
                self.playCurrentColumn()
            }
            .store(in: &cancellables)
    }

    func stop() {
        cancellables.removeAll()
    }

    func playCurrentColumn() {
        if let currentColumnIndex {
            let column = columns[currentColumnIndex]

            column.playAllInColumn()
        }
    }
}
