//
//  LeetCode.swift
//  RoyLeetCode
//
//  Created by HT Chen on 2021/10/23.
//

import Foundation

class LeetCode {
    
    func run() {
    }
    
    func comparator(arr: [Int]) -> [Int] {
        arr.sorted()
    }
    
    func generateRandomArray(maxSize: Int, maxValue: Int) -> [Int] {
        var arr = [Int]()
        arr.reserveCapacity(maxSize)
        (0...maxSize).forEach({ _ in
            arr.append((0...maxValue).randomElement() ?? 0)
        })
        return arr
    }
    
    func printArray(arr: [Int]) {
        let str = arr.map({ "\($0)" }).joined(separator: " ")
        print(str)
    }
}
