//
//  AddTask.swift
//  TaskList
//
//  Created by Kevin Earls on 02/01/2024.
//

import SwiftUI

struct AddTask: View {
  var tasks: TaskStore
  @Binding var showModal: Bool
  
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
            tasks.addTask(task: newTask)
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
  AddTask(tasks: TaskStore(), showModal: .constant(true))
}
