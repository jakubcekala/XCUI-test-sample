//
//  OverviewFragmentPO.swift
//  ToDoListUITests
//
//  Created by Jakub on 21/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class OverviewFragmentScreen: FragmentWithAddTaskButton {
    
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
    
    func clickOnAllTasksTile() -> AllTasksFragmentScreen {
        allTasksTile.tap()
        return AllTasksFragmentScreen()
    }
    
    func clickOnTodayTile() -> TodayTasksFragmentScreen {
        todayTile.tap()
        return TodayTasksFragmentScreen()
    }
    
    func clickOnTomorrowTile() -> TomorrowTasksFragmentScreen {
        tomorrowTile.tap()
        return TomorrowTasksFragmentScreen()
    }
    
    func clickOnNextSevenDaysTile() -> NextSevenDaysFragmentScreen {
        nextSevenDaysTile.tap()
        return NextSevenDaysFragmentScreen()
    }
    
    func clickOnCustomIntervalTile() -> CustomIntervalActionSheet {
        customIntervalTile.tap()
        return CustomIntervalActionSheet()
    }
    
    func clickOnCompletedTile() -> CompletedTasksFragmentScreen {
        completedTile.tap()
        return CompletedTasksFragmentScreen()
    }
    
    func clickOnSettingsButton() -> SettingsFragmentScreen {
        settingsButton.tap()
        return SettingsFragmentScreen()
    }
}
