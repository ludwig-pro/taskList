//
//  TaskEditingView.swift
//  TaskList
//
//  Created by ludwig vantours on 19/05/2020.
//  Copyright © 2020 LudwigVaan. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
  @Binding var task: Task
  
  var body: some View {
    Form {
      TextField("Name", text: $task.name)
      Toggle("Completed", isOn: $task.completed)
    }
  }
}

struct TaskEditingView_Previews: PreviewProvider {
  static var previews: some View {
    TaskEditingView(
      task: .constant( Task(name: "To Do") )
    )
  }
}
