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
    @Published var timerDuration = CGFloat(1)

    var cancellables = Set<AnyCancellable>()
    var timerCancellables = Set<AnyCancellable>()

    init() {
        let height = UIScreen.main.bounds.height
        let numberOfRows = Int(height) / 80 // 80 is the approximate height of a row
        let slots = (0 ..< numberOfRows).map { _ in Slot() }
        let columns = (0 ..< 8).map { _ in
            Column(slots: slots)
        }
        
        self.columns = columns

        $timerDuration.sink { [weak self] timerDuration in
            guard let self = self else { return }

            DispatchQueue.main.async {
                if self.isOn {
                    self.stop()
                    self.start()
                }
            }
        }
        .store(in: &cancellables)
    }

    func start() {
        Timer.publish(every: max(0.05, timerDuration), on: .main, in: .default)
            .autoconnect()
            .sink { [weak self] _ in
                guard let self = self else { return }
                self.timerFired()
            }
            .store(in: &timerCancellables)
    }

    func stop() {
        timerCancellables.removeAll()
    }

    func timerFired() {
        if let currentColumnIndex = currentColumnIndex {
            var newColumnIndex = currentColumnIndex + 1
            if newColumnIndex >= numberOfColumns {
                newColumnIndex = 0
            }

            self.currentColumnIndex = newColumnIndex
        } else {
            currentColumnIndex = 0
        }

        playCurrentColumn()
    }

    func playCurrentColumn() {
        if let currentColumnIndex {
            let column = columns[currentColumnIndex]

            column.playAllInColumn()
        }
    }
}
