//
//  ClassVsStruct.tests.swift
//  magus_iosTests
//
//  Created by Maria Agustina Markosich on 30/06/2022.
//

import XCTest
@testable import magus_ios

class ClassVsStruct_tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
//        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
//        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func test_ClassCompare() {
        let song1 = SongClass(title: "Enjoy the Silence")
        let song2 = SongClass(title: "Enjoy the Silence")
        XCTAssertEqual(song2, song1)
    }

    func test_StructCompare() {
        let song1 = SongStruct(title: "Enjoy the Silence")
        let song2 = SongStruct(title: "Enjoy the Silence")
        XCTAssertTrue(song1 == song2)
    }

}
