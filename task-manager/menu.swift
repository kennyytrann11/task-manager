//
//  menu.swift
//  task-manager
//
//  Created by Kenny Tran on 2/27/18.
//  Copyright © 2018 Kenny Tran. All rights reserved.
//

import Foundation

var taskArray: [String] = []

func mainMenu() {
    print("""
                        ====================
                        ==  TASK MANAGER  ==
                        ====================

                Select an option
            1. Add a task
            2. View a task
            3. Remove a task
            """)
}

func date() {
    func date() -> String {
        let currentDate = Date()
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "MM/dd/yyyy hh:mm"
        return dateFormat.string(from: currentDate)
    }
}

func addTasks() {
    print("Add a task")
    let task = readLine()
    taskArray.append(task!)
    // label tasks by index number
    
}

func taskDate() {
    print(taskArray)
    //assign tasks to a date
}

func viewTasks() {
    for taskView in taskArray {
        print(taskView)
        
    }
}

func removeTask() {
    
}


