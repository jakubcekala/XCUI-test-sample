//
//  AllTasksFragment.swift
//  ToDoListUITests
//
//  Created by Jakub on 21/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class AllTasksFragmentPO: TasksFragment {
    
    let fragmentName = "All Tasks"
    
    override init() {
        super.init()
        if(!application.tables.staticTexts[fragmentName].exists){
            XCTAssertThrowsError(fragmentName + " is not available")
        }
    }
}
