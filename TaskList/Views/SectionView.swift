//
//  SectionView.swift
//  TaskList
//
//  Created by ludwig vantours on 19/05/2020.
//  Copyright © 2020 LudwigVaan. All rights reserved.
//

import SwiftUI

struct SectionView: View {
  @Binding var prioritizedTasks: TaskStore.PrioritizedTasks
  var body: some View {
    Section(header: Text("\(prioritizedTasks.priority.rawValue) Priority")) {
      ForEach(prioritizedTasks.tasks) { index in
        RowView(task: self.$prioritizedTasks.tasks[index])
      }
      .onMove { sourceIndices, destinationIndex in
        self.prioritizedTasks.tasks.move(
          fromOffsets: sourceIndices,
          toOffset: destinationIndex
        )
      }
      .onDelete { indexSet in
        self.prioritizedTasks.tasks.remove(atOffsets: indexSet)
      }
    }
  }
}
