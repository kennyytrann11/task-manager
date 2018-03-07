//
//  menu.swift
//  task-manager
//
//  Created by Kenny Tran on 2/27/18.
//  Copyright © 2018 Kenny Tran. All rights reserved.
//

import Foundation

var taskArray: [Task] = []

func mainMenu() {
    print("""
                        ====================
                        ==  TASK MANAGER  ==
                        ====================

                Select an option
            1. Add a task
            2. View a task
            3. Remove a task
            4. Quit
            """)
}

func date() {
    func date() -> String {
        let currentDate = Date()
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "MM/dd/yyyy"
        return dateFormat.string(from: currentDate)
    }
}

func addTasks() {

    print("Add a task")
    let task = readLine()
    print("Describe this task")
    let description = readLine()
    print("Will be due in one week")  // Because I don't know how to let you change it from an input
    let dueDate = Date().addingTimeInterval(604800)
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .none
    dateFormatter.locale = Locale(identifier: "en_US")
    print("Due on", dateFormatter.string(from: dueDate)) // Jan 2, 2001

    let newTask = Task(name: task!, description: description!, completed: false, dueDate: dueDate)

    taskArray.append(newTask)
    
    //let dueDate = Date().addingTimeInterval(45) //Making a date that's 45 seconds in the future

}

func viewTasks() {
    for task in taskArray {
        print(task.name)
        print(task.description)
        let dueDate = Date().addingTimeInterval(604800)
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "en_US")
        print(dateFormatter.string(from: dueDate)) // Jan 2, 2001
        if task.completed == true {
            print("This task is complete")
        }
    }
    print("Have you completed this task")
    let taskDone = readLine()
    if taskDone?.lowercased().range(of: "yes") != nil {
        for tasksDone in taskArray {
            tasksDone.completed = true
        }
    }

}
    func removeTask() {
    print("Removing the task")
    // Because I don't know how to remove based on names and i based this on having only one task
    taskArray.remove(at: 0)
}

