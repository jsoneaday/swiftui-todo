//
//  Greeting.swift
//  Swift-Todo (iOS)
//
//  Created by David Choi on 8/24/20.
//

import SwiftUI

struct GreetingView: View {
    @EnvironmentObject var store: Store
    
    var body: some View {
        Text("Hello, \(store.user?.userName ?? "no one logged in")")
    }
}

struct Greeting_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView()
    }
}
