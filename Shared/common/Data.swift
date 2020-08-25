//
//  Data.swift
//  Swift-Todo (iOS)
//
//  Created by David Choi on 8/24/20.
//

import Foundation

var tasks = [
    TaskModel(id: 1, title: "A", description: "This is task A"),
    TaskModel(id: 2, title: "B", description: "This is task B"),
    TaskModel(id: 3, title: "C", description: "This is task C"),
    TaskModel(id: 4, title: "D", description: "This is task D"),
]

var users = [
    UserModel(id: 1, userName: "dave"),
    UserModel(id: 2, userName: "jon"),
    UserModel(id: 3, userName: "linda"),
    UserModel(id: 4, userName: "tim"),
    UserModel(id: 5, userName: "may"),
    UserModel(id: 6, userName: "tom"),
]

func GetUser(id: Int) -> UserModel? {
    return users.first { usr in
        usr.id == id
    };
}

func GetTasks() -> [TaskModel] {
    return tasks;
}

func AddTask(title: String, desc: String) {
    tasks.append(TaskModel(id: users[users.count - 1].id, title: title, description: desc));
}
