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
    
    func testAddCorrectTask() throws {
        OverviewScreen()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnSaveButtonWithName()
    }
    
    func testAddTaskWithoutName() throws {
        OverviewScreen()
            .clickOnAddTaskButton()
            .clickOnSaveButtonWithoutName()
            .errorDialogIsVisible()
    }
    
    func testAddCorrectTaskWithDateAndTime() throws {
        OverviewScreen()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnDateAndTime()
            .setDataOnPicker(day: "Jul 10", hour: "10", minute: "30", amPm: "AM")
            .clickOnSaveButton()
            .clickOnSaveButtonWithName()
    }
    
    func testAddCorrectTaskWithPriority() throws {
        OverviewScreen()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnPriorityButtonNotSet().selectStartPage(priority: TaskPriorityActionSheet.Priority.high)
            .clickOnSaveButtonWithName()
    }
    
    func testAddTaskFromAllTasks() throws {
        OverviewScreen()
            .clickOnAllTasksTile()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnSaveButtonWithName()
    }
    
    func testAddTaskFromTodayTasks() throws {
        OverviewScreen()
            .clickOnTodayTile()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnSaveButtonWithName()
    }
    
    func testAddTaskFromTomorrowTasks() throws {
        OverviewScreen()
            .clickOnTomorrowTile()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnSaveButtonWithName()
    }
    
    func testAddTaskFromNextSevenDaysTasks() throws {
        OverviewScreen()
            .clickOnNextSevenDaysTile()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnSaveButtonWithName()
    }
    
    func testAddTaskFromCompletedTasks() throws {
        OverviewScreen()
            .clickOnCompletedTile()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnSaveButtonWithName()
    }
}
