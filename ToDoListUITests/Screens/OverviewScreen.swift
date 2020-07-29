//
//  OverviewFragmentPO.swift
//  ToDoListUITests
//
//  Created by Jakub on 21/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class OverviewScreen: FragmentWithAddTaskButton {
    
    let application = XCUIApplication()
    
    let allTasksTile: XCUIElement
    let todayTile: XCUIElement
    let tomorrowTile: XCUIElement
    let nextSevenDaysTile: XCUIElement
    let customIntervalTile: XCUIElement
    let completedTile: XCUIElement
    
    let settingsButton: XCUIElement
    let errorNotification: XCUIElement
    
    override init() {
        allTasksTile = application.tables.staticTexts["All Tasks"]
        todayTile = application.tables.staticTexts["Today"]
        tomorrowTile = application.tables.staticTexts["Tomorrow"]
        nextSevenDaysTile = application.tables.staticTexts["Next 7 Days"]
        customIntervalTile = application.tables.staticTexts["Custom Interval"]
        completedTile = application.tables.staticTexts["Completed"]
        settingsButton = application.navigationBars["ToDoList.HomeView"].buttons["settingsIcon"]
        errorNotification = application.staticTexts["You are not logged in iCloud. Your tasks won't be synced!"]
        if (errorNotification.isHittable){
            errorNotification.tap()
        }
    }
    
    func clickOnAllTasksTile() -> AllTasksScreen {
        allTasksTile.tap()
        return AllTasksScreen()
    }
    
    func clickOnTodayTile() -> TodayTasksScreen {
        todayTile.tap()
        return TodayTasksScreen()
    }
    
    func clickOnTomorrowTile() -> TomorrowTasksScreen {
        tomorrowTile.tap()
        return TomorrowTasksScreen()
    }
    
    func clickOnNextSevenDaysTile() -> NextSevenDaysScreen {
        nextSevenDaysTile.tap()
        return NextSevenDaysScreen()
    }
    
    func clickOnCustomIntervalTile() -> CustomIntervalActionSheet {
        customIntervalTile.tap()
        return CustomIntervalActionSheet()
    }
    
    func clickOnCompletedTile() -> CompletedTasksScreen {
        completedTile.tap()
        return CompletedTasksScreen()
    }
    
    func clickOnSettingsButton() -> SettingsScreen {
        settingsButton.tap()
        return SettingsScreen()
    }
}
