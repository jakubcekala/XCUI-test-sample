//
//  File.swift
//  ToDoListUITests
//
//  Created by Jakub on 22/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class TodayTasksScreen: TasksScreen {

    let fragmentName = "Today"
    
    override init() {
        super.init()
        if(!application.navigationBars[fragmentName].staticTexts[fragmentName].exists){
            XCTAssertThrowsError(fragmentName + " is not available")
        }
    }
}
