//
//  DiagonalMatrix.tests.swift
//  magus_iosTests
//
//  Created by Maria Agustina Markosich on 03/07/2022.
//

import Foundation

import XCTest
@testable import magus_ios

class DiagonalMatrix_tests: XCTestCase {

    func test_matrix() {
        let matrix = [[1,2,3],[4,5,6],[7,8,9]]
        let difference = DiagonalMatrix.diagonalDifferenceF(arr: matrix)
        XCTAssertEqual(difference, 0)
    }

    func test_decimals() {
    }

    func test_minimax(){
        let minimax = MiniMax()
        let result = minimax.miniMaxSum(arr: [256741038,623958417,467905213,714532089,938071625])
        XCTAssertEqual("2063136757 2744467344", result)

    }
}
