//
//  OverviewFragmentPO.swift
//  ToDoListUITests
//
//  Created by Jakub on 21/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class OverviewFragmentPO: FragmentWithAddTaskButton {
    
    let application = XCUIApplication()
    
    let allTasksTile: XCUIElement
    let todayTile: XCUIElement
    let tomorrowTile: XCUIElement
    let nextSevenDaysTile: XCUIElement
    let costomIntervalTile: XCUIElement
    let completedTile: XCUIElement
    
    let settingsButton: XCUIElement
    
    override init() {
        allTasksTile = application.tables.staticTexts["All Tasks"]
        todayTile = application.tables.staticTexts["Today"]
        tomorrowTile = application.tables.staticTexts["Tomorrow"]
        nextSevenDaysTile = application.tables.staticTexts["Next 7 Days"]
        costomIntervalTile = application.tables.staticTexts["Custom Interval"]
        completedTile = application.tables.staticTexts["Completed"]
        settingsButton = application.navigationBars["ToDoList.HomeView"].buttons["settingsIcon"]
    }
    
    func clickOnAllTasksTile() -> AllTasksFragmentPO {
        allTasksTile.tap()
        return AllTasksFragmentPO()
    }
    
    func clickOnTodayTile() -> TodayTasksFragmentPO {
        todayTile.tap()
        return TodayTasksFragmentPO()
    }
    
    func clickOnTomorrowTile() -> TomorrowTasksFragmentPO {
        tomorrowTile.tap()
        return TomorrowTasksFragmentPO()
    }
    
    func clickOnNextSevenDaysTile() -> NextSevenDaysFragmentPO {
        nextSevenDaysTile.tap()
        return NextSevenDaysFragmentPO()
    }
    
    func clickOnCustomIntervalTile() -> CustomIntervalActionSheetPO {
        costomIntervalTile.tap()
        return CustomIntervalActionSheetPO()
    }
    
    func clickOnCompletedTile() -> CompletedTasksFragmentPO {
        completedTile.tap()
        return CompletedTasksFragmentPO()
    }
    
    func clickOnSettingsButton() -> SettingsFragmentPO {
        settingsButton.tap()
        return SettingsFragmentPO()
    }
}
