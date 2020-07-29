//
//  UncompleatedTaskOptionActionSheet.swift
//  ToDoListUITests
//
//  Created by Jakub on 22/07/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import Foundation
import XCTest

class CompleatedTaskOptionActionSheet: PageObject {
    
    let moveToInboxButton: XCUIElement
    let commentsButton: XCUIElement
    let remindersButton: XCUIElement
    let cancelButton: XCUIElement
    
    let application = XCUIApplication()
    
    override init() {
        moveToInboxButton = application.tables.staticTexts["Move to inbox"]
        commentsButton = application.tables.staticTexts["Comments"]
        remindersButton = application.tables.staticTexts["Reminders"]
        cancelButton = application.tables.staticTexts["Cancel"]
    }
    
    func clickOnMoveToInboxButton() -> CompletedTasksScreen {
        moveToInboxButton.tap()
        return CompletedTasksScreen()
    }
    
    func clickOnCommentsButton() {
        commentsButton.tap()
        //TODO implement PO class for Comments screen and return it by this method
    }
    
    func clickOnRemindersButton() {
        remindersButton.tap()
        //TODO implement PO class for Reminders screen and return it by this method
    }
    
    func clickOnCancelButton() -> FragmentWithAddTaskButton {
        cancelButton.tap()
        return FragmentWithAddTaskButton()
    }
}
