//
//  DiagonalMatrix.swift
//  magus_ios
//
//  Created by Maria Agustina Markosich on 03/07/2022.
//

import Foundation

struct DiagonalMatrix {

    static func diagonalDifference(arr: [[Int]]) -> Int {
        var d1 = 0, d2 = 0
        for (i, row) in arr.enumerated() {
            for(j, number) in row.enumerated() {
                if(i == j){
                    d1 += number
                }
                if(j == (row.count - 1 - i)){
                    d2 += number
                }
            }
        }

        return abs(d1 - d2)

    }


    static func diagonalDifferenceF(arr: [[Int]]) -> Int {
//        arr.enumerated().filter {
//
//            $1.enumerated().filter { number in
//                $0 == number
//            }
//            print($0)
//            print($1)
//        }

        return 0
    }
}


struct MiniMax {
    func miniMaxSum(arr: [Int]) -> String {
        var newArrayMax = arr
        var newArrayMin = arr
        let minString = String(removeMax(arr: &newArrayMax).reduce(0,+))
        let maxString = String(removeMin(arr: &newArrayMin).reduce(0,+))
        return minString + " " + maxString
    }

    func removeMax(arr: inout [Int]) -> [Int] {
        var maxPosition = 0
        var previous = 0
        for (index, number) in arr.enumerated() {
            if number > previous {
                maxPosition = index
            }
            previous = number
        }
        arr.remove(at: maxPosition)
        return arr
    }

    func removeMin(arr: inout [Int]) -> [Int] {
        var minPosition = 0
        let minimun = arr[0]
        for (index, number) in arr.enumerated() {
            if number < minimun {
                minPosition = index
            }
        }
        arr.remove(at: minPosition)
        return arr
    }
}
