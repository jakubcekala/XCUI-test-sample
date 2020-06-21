//
//  TasksFragment.swift
//  ToDoListUITests
//
//  Created by Jakub on 21/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class TasksFragment: FragmentWithAddTaskButton {
    
    let application = XCUIApplication()
    
    func taskIsPresent(name: String) {
        if(!application.tables.staticTexts["name"].exists){
            XCTAssertThrowsError(name + " task does not exist")
        }
    }
    
    func clickOnTaskWithName(name: String) -> TaskOptionActionSheetPO {
        taskIsPresent(name: name)
        application.tables.staticTexts[name].tap()
        return TaskOptionActionSheetPO()
    }
}
