//
//  File.swift
//  ToDoListUITests
//
//  Created by Jakub on 15/07/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class TaskPriorityActionSheet: PageObject {
    
    let application = XCUIApplication()
    
    let priorityButtons: XCUIElementQuery
    let cancelButton: XCUIElement
    
    override init() {
        priorityButtons = application.sheets["Task priority"].scrollViews.otherElements.buttons
        cancelButton = application.sheets["Task priority"].scrollViews.otherElements.buttons["Cancel"]
    }
    
    func clickOnCancelButton() -> AddTaskFragmentScreen {
        cancelButton.tap()
        return AddTaskFragmentScreen()
    }
    
    func selectStartPage(priority: Priority) -> AddTaskFragmentScreen {
        switch priority {
        case .highest:
            priorityButtons["Highest"].tap()
        case .high:
            priorityButtons["High"].tap()
        case .normal:
            priorityButtons["Normal"].tap()
        case .low:
            priorityButtons["Low"].tap()
        case .none:
            priorityButtons["None"].tap()
        }
        return AddTaskFragmentScreen()
    }
    
    enum Priority {
        case highest, high, normal, low, none
    }
}
