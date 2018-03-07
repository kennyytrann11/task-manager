//
//  Task.swift
//  task-manager
//
//  Created by Kenny Tran on 3/5/18.
//  Copyright © 2018 Kenny Tran. All rights reserved.
//

import Foundation

class Task {
    var name: String
    var description: String
    var completed: Bool
    var dueDate: Date
    
    init(name: String, description: String, completed: Bool, dueDate: Date) {
        self.name = name
        self.description = description
        self.completed = completed
        self.dueDate = dueDate
    }
}
