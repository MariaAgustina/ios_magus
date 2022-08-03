//
//  MapExcersice.tests.swift
//  magus_ios
//
//  Created by Maria Agustina Markosich on 03/07/2022.
//

import XCTest
@testable import magus_ios

class Map_tests: XCTestCase {

    func test_map() {
        XCTAssertEqual(
            Abbreviation.getInitials(name: "John Lennon"),"J L"
        )
        XCTAssertEqual(Abbreviation.getInitials(name: "ringo star"), "R S")
    }

    func test_decimals() {
        let decimals = [4.3,6.7,5.7,8]
        XCTAssertEqual(MapExcersice.roundDecimals(values: decimals), [4,7,6,8])
    }

    func test_filterPrimes() {
        let integer = [1,2,3,4,5,6,7,8,9,10]
        XCTAssertEqual(PrimeNumber.filterPrimeNumber(values: integer),[2,5])
    }

    func test_getFactorial() {
        XCTAssertEqual(Factorial.getFactorial(n: 4),24)
        XCTAssertEqual(Factorial.getFactorial2(n: 5),5*24)
    }

}
