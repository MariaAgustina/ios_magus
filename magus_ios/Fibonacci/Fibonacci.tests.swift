//
//  Fibonacci.tests.swift
//  magus_iosTests
//
//  Created by Maria Agustina Markosich on 12/07/2022.
//

import Foundation

import XCTest
@testable import magus_ios

class Fibonacci_tests: XCTestCase {

    func test_fib(){
        let fib = Fibonacci()
        XCTAssertEqual(fib.fib(9), 34)
    }
}
