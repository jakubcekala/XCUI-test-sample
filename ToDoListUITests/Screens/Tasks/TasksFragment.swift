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
    
    func taskIsPresent(name: String) -> TasksFragment {
        if(!application.tables.staticTexts["name"].exists){
            XCTAssertThrowsError(name + " task does not exist")
        }
        return self
    }
    
    func clickOnTaskWithName(name: String) -> TaskOptionActionSheetScreen {
        taskIsPresent(name: name)
        application.tables.staticTexts[name].tap()
        return TaskOptionActionSheetScreen()
    }
}
