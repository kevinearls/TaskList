//
//  TaskStore.swift
//  TaskList
//
//  Created by Kevin Earls on 02/01/2024.
//

import Foundation

class TaskStore: ObservableObject {
  @Published var taskStore: [Task] = [
    Task(title: "Task1"),
    Task(title: "Task2"),
    Task(title: "Task3"),
    Task(title: "Task4"),
    Task(title: "Task5")
  ]

  public func addTask(task: Task) {  // TODO: overload with a method that takes components
    print("Adding task: \(task)" )
    taskStore.append(task)
  }

  func markTaskCompleted(inOut task: Task) {  // FIXME will this work?
    for t in taskStore {
      if t.id == task.id {
        var x = t                         // FIXME I am a horrible hack
        x.isCompleted.toggle()
        break
      }
    }
  }
}
