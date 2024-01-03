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
    Task(title: "Task2", isCompleted: true, notes: "All done"),
    Task(title: "Task3", isCompleted: true),
    Task(title: "Task4", notes: "This will be horrible"),
    Task(title: "Task5")

    /*,  FIXME add these back after we get scrolling to work
    Task(title: "Task6"),
    Task(title: "Task7"),
    Task(title: "Task8"),
    Task(title: "Task9"),
    Task(title: "Task10"),
    Task(title: "Task11"),
    Task(title: "Task12"),
    Task(title: "Task13"),
    Task(title: "Task14"),
    Task(title: "Task15"),
    Task(title: "Task16"),
    Task(title: "Task17"),
    Task(title: "Task18"),
    Task(title: "Task19"),
    Task(title: "Task20"), */
  ]

  public func addTask(task: Task) {
    taskStore.append(task)
  }

  func markTaskCompleted(task: Task) {  // FIXME will this work?
    for t in taskStore {
      if t.id == task.id {
        let x = t                         // FIXME I am a horrible hack
        x.isCompleted.toggle()
        break
      }
    }
  }
}
