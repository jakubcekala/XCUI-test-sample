//
//  AddTaskActionSheetPO.swift
//  ToDoListUITests
//
//  Created by Jakub on 27/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class AddTaskFragmentScreen {
    
    let application = XCUIApplication()
    
    let cancelButton: XCUIElement
    let saveButton: XCUIElement
    let dateAndTimeButton: XCUIElement
    let priorityButton: XCUIElement
    
    init() {
        cancelButton = application.navigationBars["Add task"].buttons["Cancel"]
        saveButton = application.navigationBars["Add task"].buttons["Save"]
        dateAndTimeButton = application.buttons["Date & Time"]
        priorityButton = application.buttons["Priority"]
    }
    
    func clickOnCancelButton() -> FragmentWithAddTaskButton {
        cancelButton.tap()
        return FragmentWithAddTaskButton()
    }
    
    func clickOnSaveButtonWithName() -> FragmentWithAddTaskButton {
        saveButton.tap()
        return FragmentWithAddTaskButton()
    }
    
    func typeTaskContentWhenIsFocused(taskTile: String) -> AddTaskFragmentScreen {
        XCUIApplication().typeText(taskTile)
        return self
    }
    
    func clickOnDateAndTime() -> DateAndTimeActionSheet {
        dateAndTimeButton.tap()
        return DateAndTimeActionSheet()
    }
    
    func clickOnPriorityButtonNotSet() -> TaskPriorityActionSheet {
        priorityButton.tap()
        return TaskPriorityActionSheet()
    }
}
