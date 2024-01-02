//
//  ContentView.swift
//  TaskList
//
//  Created by Kevin Earls on 31/12/2023.
//

import SwiftUI

struct ContentView: View {
  @StateObject var tasks = TaskStore()
  @State var isPresented = false

  var body: some View {
    VStack(alignment: .leading) {
      NavigationStack() {   // TODO how to align this?
        ForEach(tasks.taskStore) { task in
          NavigationLink(value: task) {
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
              AddTask(tasks: tasks, showModal: $isPresented)
            }
          }
          Divider().background(Color.pink).opacity(1.0)   // FIXME
        }
      }
      .navigationBarHidden(true)  // TODO do I need this?
    }
    .padding()
    Spacer()
    Button(action: { isPresented.toggle() }) {  // FIXME move, what should this look like?
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

#Preview {
  ContentView()
}
