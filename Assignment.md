#  Task List instructions

Part 2 - Programming assignment.

. Create a new Git repository, local and remote. Next, create a new project in Xcode, saving the project in your new repository. After saving your project in the repository, create a new branch called homework5.
. The programming assignment for this module is the framework for a Task List app. See the video “Homework 5 App Presentation” (the next learning activity) for details of the app's functionality. When you finish this assignment, your app should look and function like the app in the video. Building the app closely follows the content for this module, so if you find yourself lost, review the content or ask questions in Discord.
. This module’s content touched on the concept of a data model. A data model is a custom type representing your app's data. The struct Movie in the FaveFlicks app is an example of a data model.
. The data in the data model will be displayed to and manipulated by the user. Data is displayed to the user via Views. Actions on data, such as creating, deleting, converting, and requesting, are handled by what is a Store or View Model. These keep the data and operations in one place that one or more Views can use.
. Separating data and operations from the display of data is a concept of Application Architecture. Review Part 2, Episode 17, Intro to App Architecture, and Episode 18, Create a Model from the course “Your First iOS & SwiftUI App: An App from Scratch”, for more details. You will revisit Application Architecture in detail later in the bootcamp.


## Requirements
A data model that represents a Task with the following properties: id of type UUID, title of type String, isCompleted of type Bool, and notes of type String.

A Store that has an array of Tasks and operations to add and complete a Task.

A ForEach loop, not a List, should be used to display the tasks.

A Sheet will be displayed when the user taps the New Task button.

Navigation will be implemented using NavigationStack.

The app will use @State, @StateObject, @ObservedObject,@EnvironmentObject, and @Binding where appropriate for managing state and passing data.

The app will have at least one ObservableObject with at least one property @Published.

SFSymbols should be used in the task list and the New Task button.

The app layout matches the layout in the video as closely as possible. There is no expectation that your layout exactly matches the layout in the video.

When the Add button is tapped on the sheet for adding a new task, the new task should be saved to the Store, the sheet is dismissed, and the new task should appear in the task list.

When the cancel button is tapped on the sheet for adding a new task, no data should be saved to the store, and the sheet is dismissed.

When a task in the list is tapped, the user will be taken to the details page.

The details page has a button at the top left that will take the user back to the task list.

When the user taps the Completed toggle, the isCompleted property of the task is updated, and that update is reflected when the user returns to the task list—a red empty square for false, a green check mark, and a square for true.

The code is in multiple files, and Views should be extracted when it makes sense. See Episode 6, Extract View from Your First iOS & SwiftUI App: Polishing the App.

When the app starts, there are at least 5 tasks in the list.

Turning in your homework

The assignment should be in a GitHub repository that you have granted your mentor access to; include the repo or branch link on the submission form. Answers to the short answer questions should be in a README file.
Your homework should be in a branch called homework5.  Push the changes for your homework branch to GitHub and create a pull request, adding your mentor as a reviewer.

## Part 3 - Above and Beyond.

. Note: you don’t need to complete Above and Beyond sections in order to pass the homework. If you need to, you can stop here. But if you have the time and bandwidth, the A&B sections will let you challenge yourself further.
The assignment intended to lay out the framework for a Task tracking app, but a few things can be done to improve that foundation.
Requirements
If you have many tasks in the task list, you will notice that the list does not scroll, and the tasks fill the screen. Make the necessary changes to allow the list to grow to any size and allow the user to scroll through all the tasks in the list.
It is possible to add a task without the user entering any information. Disable the Add button if the user has not entered a title.
The TextField for the notes only shows one line. This is fine for a short note but not practical for a longer one. Have the TextField for notes show at minimum five lines, but expand if more lines are added. (images below)


