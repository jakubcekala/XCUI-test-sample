//
//  File.swift
//  ToDoListUITests
//
//  Created by Jakub on 27/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import Foundation
import XCTest

class SettingsScreen: PageObject {
    
    let application = XCUIApplication()
    
    let startPageButton: XCUIElement
    let themeButton: XCUIElement
    let languageButton: XCUIElement
    let openWebLinksButton: XCUIElement
    
    override init() {
        startPageButton = application.tables.staticTexts["Start Page"]
        themeButton = application.tables.staticTexts["Theme"]
        languageButton = application.tables.staticTexts["Language"]
        openWebLinksButton = application.tables.staticTexts["Open web Links"]
    }

    func clickOnStartPageButton() -> StartPageDialog {
        startPageButton.tap()
        return StartPageDialog()
    }

    func clickOnThemeButton() -> ThemesScreen {
        themeButton.tap()
        return ThemesScreen()
    }
    
    func clickOnLanguageButton() -> LanguageDialog {
        languageButton.tap()
        return LanguageDialog()
    }
    
    func clickOnOpenWebLinksButton() -> OpenWebLinksDialog {
        openWebLinksButton.tap()
        return OpenWebLinksDialog()
    }
    
    class StartPageDialog {
        let startPageTiles: XCUIElementQuery
        let application = XCUIApplication()
        
        init() {
            startPageTiles = application.tables.staticTexts
        }
        
        func selectStartPage(startPage: StartPage) -> SettingsScreen {
            switch startPage {
            case .overview:
                startPageTiles["Overview"].tap()
            case .allTasks:
                startPageTiles["All Tasks"].tap()
            case .today:
                startPageTiles["Today"].tap()
            case .tomorrow:
                startPageTiles["Tomorrow"].tap()
            case .next7Days:
                startPageTiles["Next 7 Days"].tap()
            }
            return SettingsScreen()
        }
        
        func cancelDialog() -> SettingsScreen {
            startPageTiles["Cancel"].tap()
            return SettingsScreen()
        }
        
        enum StartPage {
            case overview, allTasks, today, tomorrow, next7Days
        }
    }
    
    class LanguageDialog {
        let languageTiles: XCUIElementQuery
        let application = XCUIApplication()
        
        init() {
            languageTiles = application.tables.staticTexts
        }
        
        func selectLanguage(language: Language) -> SettingsScreen {
            switch language {
            case .english:
                languageTiles["English"].tap()
            case .romanian:
                languageTiles["Romanian"].tap()
            case .traditionalChinese:
                languageTiles["Traditional Chinese"].tap()
            }
            return SettingsScreen()
        }
        
        func cancelDialog() -> SettingsScreen {
            languageTiles["Cancel"].tap()
            return SettingsScreen()
        }
        
        enum Language {
            case english, romanian, traditionalChinese
        }
    }
    
    class OpenWebLinksDialog {
        let openWebLinksTiles: XCUIElementQuery
        let application = XCUIApplication()
        
        init() {
            openWebLinksTiles = application.tables.staticTexts
        }
        
        func selectLanguage(openWebLinks: OpenWebLink) -> SettingsScreen {
            switch openWebLinks {
            case .inApp:
                openWebLinksTiles["In App"].tap()
            case .safari:
                openWebLinksTiles["Romanian"].tap()
            }
            return SettingsScreen()
        }
        
        func cancelDialog() -> SettingsScreen {
            openWebLinksTiles["Cancel"].tap()
            return SettingsScreen()
        }
        
        enum OpenWebLink {
            case inApp, safari
        }
    }
}
