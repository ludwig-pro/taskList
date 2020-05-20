//
//  TaskStore.Prioritized.swift
//  TaskList
//
//  Created by ludwig vantours on 19/05/2020.
//  Copyright © 2020 LudwigVaan. All rights reserved.
//

extension TaskStore {
  struct PrioritizedTasks {
    let priority : Task.Priority
    var tasks: [Task]
  }
}

extension TaskStore.PrioritizedTasks: Identifiable {
  var id: Task.Priority {
    priority
  }
}
