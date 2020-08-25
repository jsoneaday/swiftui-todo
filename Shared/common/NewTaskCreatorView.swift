//
//  NewTaskCreatorView.swift
//  Swift-Todo (iOS)
//
//  Created by David Choi on 8/24/20.
//

import SwiftUI

struct NewTaskCreatorView: View {
    @State private var title: String = ""
    @State private var desc: String = ""
    var refreshTasks: (_ rand: Int) -> Void
    
    init(setRefreshTasks: @escaping (_ rand: Int) -> Void) {
        refreshTasks = setRefreshTasks
    }
    
    var body: some View {
        VStack {
            Form {
                Section {
                    TextField("Title", text: $title)
                    TextField("Description", text: $desc)
                    Button(action: {
                        AddTask(title: title, desc: desc)
                        
                        refreshTasks(Int.random(in: 1...1000))
                    }) {
                        Text("Add Task")
                    }
                }
            }
        }
    }
}

struct NewTaskCreatorView_Previews: PreviewProvider {
    static var previews: some View {
        let setRefreshTasks = { (rand: Int) in }
        NewTaskCreatorView (setRefreshTasks: setRefreshTasks)
    }
}
