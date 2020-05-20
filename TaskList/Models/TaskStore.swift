//
//  TaskStore.swift
//  TaskList
//
//  Created by ludwig vantours on 18/05/2020.
//  Copyright © 2020 LudwigVaan. All rights reserved.
//

import Combine

class TaskStore : ObservableObject {  
  @Published var prioritizedTasks = [
    PrioritizedTasks(priority: .no, names: [
      "Cleaned toilet",
      "Cleaned kitchen",
      "Cleaned bedroom",
      "Cleaned desk",]),
    PrioritizedTasks(priority: .low, names: [
      "Learn Swift",
      "Learn Kotlin",
      "Learn Java",
      "Learn JavaScript",]),
    PrioritizedTasks.init(priority: .medium , names: [
      "Feed cat",
      "Feed fish",
      "Feed dog",
      "Feed butterfly"]),
    PrioritizedTasks.init(priority: .high, names: [
      "Play lego",
      "Play video game",
      "Play guitare",
      "Play yoyo",]
    ),
  ]
  
  func getIndex(for priority: Task.Priority) -> Int {
    prioritizedTasks.firstIndex { $0.priority == priority
    }!
  }
}

private extension TaskStore.PrioritizedTasks {
  init(priority: Task.Priority, names: [String]) {
    self.init(priority: priority, tasks: names.map { Task(name: $0) })
  }
}
