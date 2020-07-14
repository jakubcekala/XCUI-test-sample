//
//  AddTasksTests.swift
//  ToDoListUITests
//
//  Created by Jakub on 14/07/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class AddTasksTests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    func test() {
        OverviewFragmentScreen()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnDateAndTime()
            .setDataOnPicker(day: "Jul 15", hour: "11", minute: "25", amPm: "AM")
            .clickOnSaveButton()
            .clickOnSaveButtonWithName()
    }

}
