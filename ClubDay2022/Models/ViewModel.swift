//
//  ViewModel.swift
//  ClubDay2022
//
//  Created by A. Zheng (github.com/aheze) on 9/1/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import SwiftUI

class ViewModel: ObservableObject {
    var numberOfColumns = 8
    @Published var currentColumnIndex: Int?
    @Published var columns = [Column]()
    @Published var isOn = false

    init() {
        let columns = (0 ..< 8).map { _ in
            Column(
                slots: [ /// 3 slots by default
                    .init(),
                    .init(),
                    .init(),
                ]
            )
        }
        self.columns = columns
    }
}
