//
//  CustomIntervalFragmentScreen.swift
//  ToDoListUITests
//
//  Created by Jakub on 22/07/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class CustomIntervalScreen: TasksScreen {
    
    let fragmentName = "Custom Interval"
    
    override init() {
        super.init()
        if(!application.navigationBars[fragmentName].staticTexts[fragmentName].exists){
            XCTAssertThrowsError(fragmentName + " is not available")
        }
    }
}
