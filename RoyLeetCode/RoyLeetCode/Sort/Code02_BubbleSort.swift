//
//  Code02_BubbleSort.swift
//  RoyLeetCode
//
//  Created by HT Chen on 2021/11/3.
//

import Foundation

class Code02_BubbleSort: LeetCode {
    
    override func run() {
        let testTime = 500
        let maxSize = 100
        let maxValue = 100
        var succeed = true
        (0...testTime).forEach { i in
            let arr1 = generateRandomArray(maxSize: maxSize, maxValue: maxValue)
            let arr2 = arr1
            let result1 = bubbleSort(arr: arr1)
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
    
    func bubbleSort(arr: [Int]) -> [Int] {
        guard arr.count > 1 else {
            return []
        }
        var resultArr = arr
        for i in (0..<(arr.count - 1)) {
            for j in (0..<(arr.count - 1 - i)) {
                if resultArr[j] > resultArr[j + 1] {
                    resultArr.swapAt(j, j + 1)
                }
            }
        }
        return resultArr
    }
}
