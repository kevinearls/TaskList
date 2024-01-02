//
//  Task.swift
//  TaskList
//
//  Created by Kevin Earls on 02/01/2024.
//

import Foundation

struct Task : Identifiable, Hashable {
  //A data model that represents a Task with the following properties: id of type UUID, title of type String, isCompleted of type Bool, and notes of type String.
  let id = UUID()
  let title: String
  var isCompleted: Bool = false
  var notes: String = ""
}
