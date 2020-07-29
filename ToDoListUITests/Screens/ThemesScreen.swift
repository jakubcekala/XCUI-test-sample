//
//  ThemesFragmentPO.swift
//  ToDoListUITests
//
//  Created by Jakub on 26/06/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class ThemesScreen: PageObject {
    
    let application = XCUIApplication()
    
    let settingsButton: XCUIElement
    let colorsTiles: XCUIElementQuery
    let okAlertDialog: XCUIElement
    
    override init() {
        settingsButton = application.navigationBars["Themes"].buttons["Settings"]
        colorsTiles = application.tables.staticTexts
        okAlertDialog = application.alerts.scrollViews.otherElements.buttons["OK"]
    }
    
    func clickOnColorButton(theme: ThemeType) {
        switch theme {
        case .alizarinRed:
            colorsTiles["Alizarin Red"].tap()
        case .vanadylBlue:
            colorsTiles["Vanadyl Blue"].tap()
        case .skirretGreen:
            colorsTiles["Skirret Green"].tap()
        case .sunflowerYellow:
            colorsTiles["Sunflower Yellow"].tap()
        case .rediantOrange:
            colorsTiles["Radiant Orange"].tap()
        case .rosePink:
            colorsTiles["Rose Pink"].tap()
        case .midnightBlack:
            colorsTiles["Midnight Black"].tap()
        }
    }
    
    func clickOnOkAlertDialog() {
        okAlertDialog.tap()
    }

    enum ThemeType {
        case alizarinRed, vanadylBlue, skirretGreen, sunflowerYellow, rediantOrange, rosePink, midnightBlack
    }
}
