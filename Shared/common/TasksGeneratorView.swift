//
//  TasksGeneratorView.swift
//  Swift-Todo (iOS)
//
//  Created by David Choi on 8/24/20.
//

import SwiftUI

struct TasksGeneratorView: View {
    var taskList: [TaskModel]
    
    var body: some View {
        ScrollView {
            
        }
    }
}

struct TasksGeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        TasksGeneratorView(taskList: [TaskModel]())
    }
}
