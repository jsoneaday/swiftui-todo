//
//  Store.swift
//  Swift-Todo (iOS)
//
//  Created by David Choi on 8/24/20.
//

import SwiftUI

class Store: ObservableObject {
    @Published var user: UserModel?
}
