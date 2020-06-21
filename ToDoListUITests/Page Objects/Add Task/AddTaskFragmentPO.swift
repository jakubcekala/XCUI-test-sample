//
//  AddTaskActionSheetPO.swift
//  ToDoListUITests
//
//  Created by Jakub on 27/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class AddTaskFragmentPO {
    
    let application = XCUIApplication()
    
    let cancelButton: XCUIElement
    let saveButton: XCUIElement
    
    init() {
        cancelButton = application.navigationBars["Add task"].buttons["Cancel"]
        saveButton = application.navigationBars["Add task"].buttons["Save"]
    }
    
    func clickOnCancelButton() -> FragmentWithAddTaskButton {
        cancelButton.tap()
        return FragmentWithAddTaskButton()
    }
    
    func clickOnSaveButtonWithName() -> FragmentWithAddTaskButton {
        return FragmentWithAddTaskButton()
    }
    
    func typeTaskContentWhenIsFocused(taskTile: String) {
        XCUIApplication().typeText(taskTile)
    }
}
