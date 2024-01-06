//
//  ContentView.swift
//  TaskList
//
//  Created by Kevin Earls on 31/12/2023.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var taskStore: TaskStore
  @State private var isPresented = false

  var body: some View {
    VStack(alignment: .leading) {
      NavigationStack() {
        ForEach($taskStore.tasks) { $task in
          NavigationLink(value: task) {
            TaskRow(isPresented: $isPresented, task: task)
          }
          Divider()
        }
      }
      .navigationBarHidden(true)
    }
    .padding()
    Spacer()
    NewTaskButton(isPresented: $isPresented)
  }
}

struct NewTaskButton: View {
  @Binding var isPresented: Bool

  var body: some View {
    Button(action: { isPresented.toggle() }) {
      HStack {
        Image(systemName: "plus.circle.fill")
          .padding()
        Text("New Task")
          .bold()
          .padding(.horizontal, -15)
        Spacer()
      }
    }
  }
}

struct TaskRow: View {
  @Binding var isPresented: Bool
  var task: Task

  var body: some View {
    HStack(alignment: .top) {
      Text(task.title)
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
      Spacer()
      Image(systemName: task.isCompleted ? "checkmark.square" : "square")
        .foregroundColor(task.isCompleted ? Color.green : Color.red)
    }
    .navigationDestination(for: Task.self) { task in
      TaskView(task: task)
    }
    .navigationBarTitle("My Tasks")
    .sheet(isPresented: $isPresented) {
      AddTask(showModal: $isPresented)
    }
  }
}

#Preview {
  ContentView()
    .environmentObject(TaskStore())
}

#Preview("New Task Button") {
  NewTaskButton(isPresented: .constant(false))
}

#Preview("TaskRow") {
  VStack {
    TaskRow(isPresented: .constant(false), task: Task(title: "Some Task", isCompleted: true, notes: "Do something"))
      .padding()
    TaskRow(isPresented: .constant(false), task: Task(title: "Some Other Task", isCompleted: false, notes: "Do something else"))
      .padding()
  }
}
