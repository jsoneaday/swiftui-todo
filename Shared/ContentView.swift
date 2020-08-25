//
//  ContentView.swift
//  Shared
//
//  Created by David Choi on 8/21/20.
//

import SwiftUI

struct ContentView: View {
    var user: UserModel? = GetUser(id: 2)
    @EnvironmentObject var store: Store
    @ObservedObject var contentObject: ContentObject = ContentObject()
    
    var body: some View {
        VStack (spacing: 10) {
            GreetingView()
            TasksRefreshedMsgView()
            NewTaskCreatorView(setRefreshTasks: { (rand: Int) in contentObject.updateTasks() })
            TasksGeneratorView(taskList: contentObject.taskList)
            Spacer()
        }
        .onAppear() {
            store.user = user
        }
    }    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class ContentObject: ObservableObject {
    @Published var refreshTasks: Int = 0
    @Published var taskList: [TaskModel] = []
    @Published var msg: String = ""
    
    func updateTasks() -> Void {
        taskList = GetTasks()
    }
}
