//
//  TaskList.swift
//  TaskList
//
//  Created by ludwig vantours on 18/05/2020.
//  Copyright © 2020 LudwigVaan. All rights reserved.
//
import Foundation

struct Task : Identifiable {
  let id = UUID()
  var name: String
  var completed: Bool = false
  
}
