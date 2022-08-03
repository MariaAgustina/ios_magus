//
//  Palindrome.tests.swift
//  magus_iosTests
//
//  Created by Maria Agustina Markosich on 17/07/2022.
//

import Foundation

import XCTest
@testable import magus_ios

class Palindrome_tests: XCTestCase {

    func test_palindrome(){
        let palindrome = Palindrome()
        XCTAssertTrue(palindrome.isPalindrome(word: "wow"))
        XCTAssertTrue(palindrome.isPalindrome(word: "madam"))
        XCTAssertFalse(palindrome.isPalindrome(word: "other"))
    }

    func test_palindrome_(){
        let palindrome = Palindrome()
        var wow = String("wow")
        var madam = String("madam")
        var maddam = String("maddam")
        var other = String("other")
        XCTAssertTrue(palindrome.isPalindrome_(word: &wow))
        XCTAssertTrue(palindrome.isPalindrome_(word: &madam))
        XCTAssertTrue(palindrome.isPalindrome_(word: &maddam))
        XCTAssertFalse(palindrome.isPalindrome_(word: &other))
    }
}
