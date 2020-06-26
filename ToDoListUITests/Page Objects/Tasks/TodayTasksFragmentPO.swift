//
//  File.swift
//  ToDoListUITests
//
//  Created by Jakub on 22/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class TodayTasksFragmentPO: TasksFragment {

    let fragmentName = "Today"
    
    override init() {
        super.init()
        if(!application.tables.staticTexts[fragmentName].exists){
            XCTAssertThrowsError(fragmentName + " is not available")
        }
    }
}
