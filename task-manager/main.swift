//
//  main.swift
//  task-manager
//
//  Created by Kenny Tran on 2/27/18.
//  Copyright © 2018 Kenny Tran. All rights reserved.
//

import Foundation

mainMenu()

func fMenu() {
    let menu = Int(readLine()!)!

if menu == 1 {
    addTasks()
    print("Press Enter to continue")
    _ = readLine()
    mainMenu()
    fMenu()
}

if menu == 2 {
    viewTasks()
    print("Press Enter to continue")
    _ = readLine()
    mainMenu()
    fMenu()
}

if menu == 3 {
    removeTask()
    print("Press Enter to continue")
    _ = readLine()
    mainMenu()
    fMenu()
}
    
if menu == 4 {
    
}
    
}

fMenu()
