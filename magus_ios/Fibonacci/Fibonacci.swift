//
//  Fibonacci.swift
//  magus_ios
//
//  Created by Maria Agustina Markosich on 12/07/2022.
//

import Foundation

struct Fibonacci {
    func fib(_ n: Int) -> Int {
        if n <= 1 {
            return n
        }
        return fib(n-1) + fib(n-2)
    }
}
