//
//  AddTask.swift
//  TaskList
//
//  Created by Kevin Earls on 02/01/2024.
//

import SwiftUI

struct AddTask: View {
  @Binding var showModal: Bool
  @EnvironmentObject var taskStore: TaskStore

  @State private var newTaskName: String = ""
  @State var notes: String = ""
  @State var address: String = ""

  var body: some View {
    Form {
      HStack {
        Section {
          Button("Cancel") {
            showModal = false
          }
          .padding()
          Spacer()
        }
        Section {
          Button("Add") {
            let newTask = Task(title: newTaskName, notes: notes)
            taskStore.addTask(task: newTask)
            showModal = false
          }
          .padding()
        }
        .disabled(newTaskName.isEmpty)
      }
      VStack {
        TextField("Task Title", text: $newTaskName)
          .padding()
        TextField("Task Notes", text: $notes, axis: .vertical)
          .lineLimit(5)
          .padding()
      }
    }
  }
}

#Preview {
  AddTask(showModal: .constant(true))
    .environmentObject(TaskStore())
}
