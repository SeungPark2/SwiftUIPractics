//
//  UserData.swift
//  SwiftUI2
//
//  Created by PST on 2019/10/22.
//  Copyright © 2019 PST. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
