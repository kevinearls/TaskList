//
//  EraseMe.swift
//  TaskList
//
//  Created by Kevin Earls on 02/01/2024.
//

import SwiftUI

struct EraseMe: View {
  @State private var username: String = ""
  private var emailFieldIsFocused: Bool = false

  var body: some View {
      TextField(
          "User name (email address)",
          text: $username
      )
//      .focused(emailFieldIsFocused)
//      .onSubmit {
//          validate(name: username)
//      }
      .textInputAutocapitalization(.never)
      .disableAutocorrection(true)
      .border(.secondary)


      Text(username)
          //.foregroundColor(emailFieldIsFocused ? .red : .blue)
  }
}

#Preview {
    EraseMe()
}
