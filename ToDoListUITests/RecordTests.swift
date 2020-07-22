//
//  RecordTests.swift
//  ToDoListUITests
//
//  Created by Jakub on 21/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class RecordTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        app.navigationBars["Settings"].buttons["Done"].tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["All Tasks"]/*[[".cells.staticTexts[\"All Tasks\"]",".staticTexts[\"All Tasks\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Asd"]/*[[".cells.staticTexts[\"Asd\"]",".staticTexts[\"Asd\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.children(matching: .window).element(boundBy: 0).tap()
        XCUIApplication().navigationBars["Tomorrow"].staticTexts["Tomorrow"].tap()
        XCUIApplication().navigationBars["Today"].staticTexts["Today"].tap()


                
    }
    
    func testA() {
        OverviewFragmentScreen()
            .clickOnCustomIntervalTile()
            .selectStartDate(startDate: "20 Jul 20")
            .selectEndDate(endDate: "25 Jul 20")
            .clickOnDoneButton()
        Thread.sleep(forTimeInterval: TimeInterval.init(1000))
    }

}
