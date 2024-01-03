//
//  TaskStore.swift
//  TaskList
//
//  Created by Kevin Earls on 02/01/2024.
//

import Combine

class TaskStore: ObservableObject {
  @Published var tasks: [Task] = [
    Task(title: "Task1"),
    Task(title: "Task2", isCompleted: true, notes: "All done"),
    Task(title: "Task3", isCompleted: true),
    Task(title: "Task4", notes: "This will be horrible"),
    Task(title: "Task5"),
    Task(title: "Task6"),
    Task(title: "Task7"),
    Task(title: "Task8"),
    Task(title: "Task9"),
    Task(title: "Task10")
  ]

  public func addTask(task: Task) {
    tasks.append(task)
  }
}
