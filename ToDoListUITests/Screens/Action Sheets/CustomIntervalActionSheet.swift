//
//  File.swift
//  ToDoListUITests
//
//  Created by Jakub on 22/05/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import Foundation
import XCTest

class CustomIntervalActionSheet: PageObject {
    
    let cancelButton: XCUIElement
    let doneButton: XCUIElement
    let startDatePicker: XCUIElement
    let endDatePicker: XCUIElement
    
    let application = XCUIApplication()
    
    override init() {
        cancelButton = application.toolbars["Toolbar"].buttons["Cancel"]
        doneButton = application.toolbars["Toolbar"].buttons["Done"]
        startDatePicker = application.datePickers.pickerWheels.element(boundBy: 0)
        endDatePicker = application.datePickers.pickerWheels.element(boundBy: 1)
    }
    
    func clickOnCancelButton() -> OverviewFragmentScreen {
        cancelButton.tap()
        return OverviewFragmentScreen()
    }
    
    func clickOnDoneButton() -> CustomIntervalFragmentScreen {
        doneButton.tap()
        return CustomIntervalFragmentScreen()
    }
    
    func selectStartDate(startDate: String) -> CustomIntervalActionSheet {
        startDatePicker.adjust(toPickerWheelValue: startDate)
        return self
    }

    func selectEndDate(endDate: String) -> CustomIntervalActionSheet {
        endDatePicker.adjust(toPickerWheelValue: endDate)
        return self
    }
}
