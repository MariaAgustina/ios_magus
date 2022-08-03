//
//  BucketTests.swift
//  magus_ios
//
//  Created by Maria Agustina Markosich on 23/07/2022.
//

import Foundation
import XCTest

@testable import magus_ios

class BucketTests: XCTestCase {

    func test_temperature() {
        let temperature = Temperature(value: 10)
        let temperature2 = Temperature(value: 1)
        XCTAssertEqual(temperature.fahrenheitValue, 50)
        XCTAssertEqual(temperature2.fahrenheitValue, 33.8)
    }

    func test_temperature_setter() {
        var temperature = Temperature(value: 10)
        temperature.fahrenheitValue = 68
        XCTAssertEqual(temperature.value, 20)
    }
}
