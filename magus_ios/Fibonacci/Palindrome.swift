//
//  Palindrome.swift
//  magus_ios
//
//  Created by Maria Agustina Markosich on 13/07/2022.
//

import Foundation

struct Palindrome {
    func isPalindrome(word: String) -> Bool {
        String(word.reversed()) == word
    }

    func isPalindrome_(word: inout String) -> Bool {
        if word.count <= 2 {
            return word.first == word.last
        }
        if word.first == word.last {
            word.removeFirst()
            word.removeLast()
            return isPalindrome(word: word)
        }
        return false
    }
}
