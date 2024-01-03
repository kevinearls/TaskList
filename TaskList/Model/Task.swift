//
//  Task.swift
//  TaskList
//
//  Created by Kevin Earls on 02/01/2024.
//

import Foundation

class Task : Identifiable, ObservableObject, Hashable, Equatable {
  //A data model that represents a Task with the following properties: id of type UUID, title of type String, isCompleted of type Bool, and notes of type String.
  let id = UUID()
  let title: String
  @Published var isCompleted: Bool = false
  var notes: String = ""

  init(title: String, isCompleted: Bool = false, notes: String = "") {
    self.title = title
    self.isCompleted = isCompleted
    self.notes = notes
  }

  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
    hasher.combine(title)
    hasher.combine(notes)
  }

  static func == (lhs: Task, rhs: Task) -> Bool {
    lhs.id == rhs.id
  }
}
