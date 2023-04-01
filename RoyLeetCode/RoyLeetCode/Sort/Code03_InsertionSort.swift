//
//  Code03_InsertionSort.swift
//  RoyLeetCode
//
//  Created by HT Chen on 4/1/23.
//

import Foundation

class Code03_InsertionSort: LeetCode {
    
    override func run() {
        let testTime = 500
        let maxSize = 100
        let maxValue = 100
        var succeed = true
        (0...testTime).forEach { i in
            let arr1 = generateRandomArray(maxSize: maxSize, maxValue: maxValue)
            let arr2 = arr1
            let result1 = insertionSort(arr: arr1)
            let result2 = comparator(arr: arr2)
            if result1 != result2 {
                succeed = false
                printArray(arr: result1)
                print("=============")
                printArray(arr: result2)
            }
        }
        print(succeed ? "success": "fail")
    }
    
    func insertionSort(arr: [Int]) -> [Int] {
        guard arr.count > 1 else {
            return []
        }
        var resultArr = arr
        for i in stride(from: 0, to: resultArr.count - 1, by: 1) {
            for j in stride(from: i, through: 0, by: -1) {
                if resultArr[j + 1] < resultArr[j] {
                    resultArr.swapAt(j + 1, j)
                }
            }
        }
        return resultArr
    }
    
    static func comparator(arr: [Int]) -> [Int] {
        arr.sorted()
    }
    
    static func generateRandomArray(maxSize: Int, maxValue: Int) -> [Int] {
        var arr = [Int]()
        arr.reserveCapacity(maxSize)
        (0...maxSize).forEach({ _ in
            arr.append((0...maxValue).randomElement() ?? 0)
        })
        return arr
    }
    
    static func printArray(arr: [Int]) {
        let str = arr.map({ "\($0)" }).joined(separator: " ")
        print(str)
    }
}
