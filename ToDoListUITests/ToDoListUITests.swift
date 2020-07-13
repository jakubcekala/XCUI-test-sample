//
//  ToDoListUITests.swift
//  ToDoListUITests
//
//  Created by Jakub on 21/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class ToDoListUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        XCUIApplication().launch()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testShit() throws {
        
    }

//    func testExample1() throws {
//        let overviewFragment = OverviewFragmentPO()
//        overviewFragment.clickOnAllTasksTile().clickOnAddTaskButton()
//    }
//    
//    func testExample2() throws {
//        let overviewFragment = OverviewFragmentPO()
//        overviewFragment.clickOnTodayTile()
//    }
//    
//    func testExample3() throws {
//        let overviewFragment = OverviewFragmentPO()
//        overviewFragment.clickOnTomorrowTile()
//    }
//    
//    func testExample4() throws {
//        let overviewFragment = OverviewFragmentPO()
//        overviewFragment.clickOnNextSevenDaysTile()
//    }
//    
//    func testExample5() throws {
//        let overviewFragment = OverviewFragmentPO()
//        overviewFragment.clickOnCustomIntervalTile()
//    }
//    
//    func testExample6() throws {
//        let overviewFragment = OverviewFragmentPO()
//        overviewFragment.clickOnCompletedTile()
//    }
//    
//    func testExample7() throws {
//        let overviewFragment = OverviewFragmentPO()
//        let addTaskFragment = overviewFragment.clickOnAddTaskButton()
//    }
//
//    func testExample8() throws {
//        let overviewFragment = OverviewFragmentPO()
//        sleep(3)
//        let adsas = overviewFragment.clickOnAddTaskButton()
//        sleep(3)
//    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
            
        }
    }
}
