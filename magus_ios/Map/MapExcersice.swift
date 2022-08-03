//
//  MapExcersice.swift
//  magus_ios
//
//  Created by Maria Agustina Markosich on 03/07/2022.
//

import UIKit

struct MapExcersice {

    static func roundDecimals(values: [Double]) -> [Double] {
        return values.map{ $0.rounded() }
    }

}

struct Abbreviation {
    static func getInitials(name: String) -> String{
        return name.split(separator: " ")
                .map{
                    $0.prefix(1).uppercased()
                }.joined(separator: " ")
    }
}


struct PrimeNumber {

    static func filterPrimeNumber(values: [Int]) -> [Int] {
        return values.filter {
            $0.isPrime()
        }
    }
}

struct Factorial {
    static func getFactorial(n: Int) -> Int {
        return (1...n).reduce(1, { x, y in
            x*y
        })
    }

    static func getFactorial2(n: Int) -> Int {
        return (1...n).reduce(1, *)
    }
}

extension Int {
    func isPrime() -> Bool {
        if self <= 1 {
             return false
        }
        if self <= 3 {
             return true
        }
        var i = 2
        while i*i <= self {
            if self % i == 0 {
                return false
            }
            i = i + 1
        }
        return true
    }
}
