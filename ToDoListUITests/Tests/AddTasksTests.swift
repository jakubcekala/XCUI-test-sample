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
        OverviewFragmentScreen()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnSaveButtonWithName()
    }
    
    func testAddTaskWithoutName() throws {
        OverviewFragmentScreen()
            .clickOnAddTaskButton()
            .clickOnSaveButtonWithoutName()
            .errorDialogIsVisible()
    }
    
    func testAddCorrectTaskWithDateAndTime() throws {
        OverviewFragmentScreen()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnDateAndTime()
            .setDataOnPicker(day: "Jul 10", hour: "10", minute: "30", amPm: "AM")
            .clickOnSaveButton()
            .clickOnSaveButtonWithName()
    }
    
    func testAddCorrectTaskWithPriority() throws {
        OverviewFragmentScreen()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnPriorityButtonNotSet().selectStartPage(priority: TaskPriorityActionSheet.Priority.high)
            .clickOnSaveButtonWithName()
    }
    
    func testAddTaskFromAllTasks() throws {
        OverviewFragmentScreen()
            .clickOnAllTasksTile()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnSaveButtonWithName()
    }
    
    func testAddTaskFromTodayTasks() throws {
        OverviewFragmentScreen()
            .clickOnTodayTile()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnSaveButtonWithName()
    }
    
    func testAddTaskFromTomorrowTasks() throws {
        OverviewFragmentScreen()
            .clickOnTomorrowTile()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnSaveButtonWithName()
    }
    
    func testAddTaskFromNextSevenDaysTasks() throws {
        OverviewFragmentScreen()
            .clickOnNextSevenDaysTile()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnSaveButtonWithName()
    }
    
    func testAddTaskFromCompletedTasks() throws {
        OverviewFragmentScreen()
            .clickOnCompletedTile()
            .clickOnAddTaskButton()
            .typeTaskContentWhenIsFocused(taskTile: "Test")
            .clickOnSaveButtonWithName()
    }
}
