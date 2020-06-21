//
//  AddTaskFragment.swift
//  ToDoListUITests
//
//  Created by Jakub on 27/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class FragmentWithAddTaskButton: PageObject {
    
    let addTaskButton: XCUIElement
    
    override init() {
        addTaskButton = XCUIApplication().buttons["Add Task"]
    }
    
    func clickOnAddTaskButton() -> AddTaskFragmentPO {
        addTaskButton.tap()
        return AddTaskFragmentPO()
    }
}
