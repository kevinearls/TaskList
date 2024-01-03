//
//  TaskView.swift
//  TaskList
//
//  Created by Kevin Earls on 02/01/2024.
//
import SwiftUI

struct TaskView: View {
  @ObservedObject var task: Task
    var body: some View {
      Form {
        VStack(alignment: .leading) {
          Section(header: Text("Task Title").font(.largeTitle)) {
            Text(task.title)
              .font(.title2)
          }
          Section(header: Text("Notes").font(.largeTitle)) {
            Text(task.notes)
          }
          Section (header: Text("Completed").font(.largeTitle)) {
            Toggle(isOn: $task.isCompleted, label: {
              Text("Completed")
            })
          }
        }
      }
    }
}

#Preview {
  TaskView(task: Task(title: "Test task", isCompleted: true, notes: "Nothing to see here"))
}
