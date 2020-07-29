//
//  File.swift
//  ToDoListUITests
//
//  Created by Jakub on 14/07/2020.
//  Copyright © 2020 Radu Ursache - RanduSoft. All rights reserved.
//

import XCTest

class DateAndTimeActionSheet: PageObject {
    
    let noDateButton: XCUIElement
    let saveButton: XCUIElement
    
    let dayPicker: XCUIElement
    let hoursPicker: XCUIElement
    let minutesPicker: XCUIElement
    let amPmPicker: XCUIElement
    
    let application = XCUIApplication()
    
    override init() {
        noDateButton = application.toolbars["Toolbar"].buttons["No date"]
        saveButton = application.toolbars["Toolbar"].buttons["Save"]
        dayPicker = application.datePickers.pickerWheels.element(boundBy: 0)
        hoursPicker = application.datePickers.pickerWheels.element(boundBy: 1)
        minutesPicker = application.datePickers.pickerWheels.element(boundBy: 2)
        amPmPicker = application.datePickers.pickerWheels.element(boundBy: 3)
    }

    func clickOnNoDateButton() -> AddTaskScreen {
        noDateButton.tap()
        return AddTaskScreen()
    }
    
    func clickOnSaveButton() -> AddTaskScreen {
        saveButton.tap()
        return AddTaskScreen()
    }
    
    func selectDay(day: String) -> DateAndTimeActionSheet {
        dayPicker.adjust(toPickerWheelValue: day)
        return self
    }

    func selectHour(hour: String) -> DateAndTimeActionSheet {
        hoursPicker.adjust(toPickerWheelValue: hour)
        return self
    }
    
    func selectMinute(minute: String) -> DateAndTimeActionSheet {
        minutesPicker.adjust(toPickerWheelValue: minute)
        return self
    }
    
    func selectAmPm(amPm: String) -> DateAndTimeActionSheet {
        amPmPicker.adjust(toPickerWheelValue: amPm)
        return self
    }
    
    func setDataOnPicker(day: String, hour: String, minute: String, amPm: String) -> DateAndTimeActionSheet {
        return self.selectDay(day: day)
            .selectHour(hour: hour)
            .selectMinute(minute: minute)
            .selectAmPm(amPm: amPm)
    }
}
