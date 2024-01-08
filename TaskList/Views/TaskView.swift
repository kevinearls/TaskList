//
//  TaskView.swift
//  TaskList
//
//  Created by Kevin Earls on 02/01/2024.
//
import SwiftUI

struct TaskView: View {
  var task: Task
  @EnvironmentObject var taskStore: TaskStore
  @Environment(\.dismiss) var dismiss

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
          HStack (alignment: .center) {
            Text("\(task.isCompleted.description)")
            Button(action: {
              taskStore.completeTask(task: task)
              withAnimation {
                dismiss()
              }
            }) {
              Text(task.isCompleted ? "Mark incomplete" : "Mark complete")
                .font(.system(.title2))
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
          }
          .padding(.top, -15)
        }
      }
    }
  }
}

#Preview {
  VStack {
    TaskView(task: Task(title: "Incomplete test task", isCompleted: false, notes: "Keep working"))
      .environmentObject(TaskStore())

    TaskView(task: Task(title: "Complete test task", isCompleted: true, notes: "All done!"))
      .environmentObject(TaskStore())
  }
}
