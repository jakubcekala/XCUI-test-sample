//
//  AddTaskActionSheetPO.swift
//  ToDoListUITests
//
//  Created by Jakub on 27/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class AddTaskScreen {
    
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
    
    func clickOnSaveButtonWithoutName() -> ErrorNameDialog {
        saveButton.tap()
        return ErrorNameDialog()
    }
    
    func typeTaskContentWhenIsFocused(taskTile: String) -> AddTaskScreen {
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
    
    class ErrorNameDialog: PageObject {
        
        let application = XCUIApplication()
        
        let okButton: XCUIElement
        let errorLabel: XCUIElement
        let errorDescLabel: XCUIElement
        
        override init() {
            okButton = application.alerts["Error"].scrollViews.otherElements.buttons["OK"]
            errorLabel = application.alerts["Error"].scrollViews.otherElements.staticTexts["Error"]
            errorDescLabel = application.alerts["Error"].scrollViews.otherElements.staticTexts["You must name your task to save it"]
        }
        
        func clickOnOkButton() -> AddTaskScreen {
            okButton.tap()
            return AddTaskScreen()
        }
        
        func errorDialogIsVisible() -> ErrorNameDialog {
            XCTAssertTrue(errorLabel.isHittable)
            XCTAssertTrue(errorDescLabel.isHittable)
            XCTAssertTrue(okButton.isHittable)
            return self
        }
    }
}
