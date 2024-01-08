//
//  TaskListApp.swift
//  TaskList
//
//  Created by Kevin Earls on 31/12/2023.
//

import SwiftUI

@main
struct TaskListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environmentObject(TaskStore())
        }
    }
}
