//
//  File.swift
//  ToDoListUITests
//
//  Created by Jakub on 27/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import Foundation
import XCTest

class SettingsFragmentPO: PageObject {
    
    let appliaction = XCUIApplication()
    
    let startPageButton: XCUIElement
    let themeButton: XCUIElement
    let languageButton: XCUIElement
    let openWebLinksButton: XCUIElement
    
    override init() {
        startPageButton = appliaction.tables.staticTexts["Start Page"]
        themeButton = appliaction.tables.staticTexts["Theme"]
        languageButton = appliaction.tables.staticTexts["Language"]
        openWebLinksButton = appliaction.tables.staticTexts["Open web Links"]
    }

    func clickOnStartPageButton() {
        startPageButton.tap()
    }

    func clickOnThemeButton() {
        themeButton.tap()
    }
    
    func clickOnLanguageButton() {
        languageButton.tap()
    }
    
    func clickOnOpenWebLinksButton() {
        openWebLinksButton.tap()
    }
}
