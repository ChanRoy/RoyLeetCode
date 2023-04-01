//
//  Code01_SelectionSort.swift
//  RoyLeetCode
//
//  Created by HT Chen on 2021/10/23.
//

import Foundation

class Code01_SelectionSort: LeetCode {
    
    override func run() {
        let testTime = 500
        let maxSize = 100
        let maxValue = 100
        var succeed = true
        (0...testTime).forEach { i in
            let arr1 = generateRandomArray(maxSize: maxSize, maxValue: maxValue)
            let arr2 = arr1
            let result1 = selectionSort(arr: arr1)
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
    
    func selectionSort(arr: [Int]) -> [Int] {
        guard arr.count > 1 else {
            return arr
        }
        var resultArr = arr
        for i in (0..<arr.count) {
            var minIndex = i
            for j in (i..<arr.count) {
                if resultArr[minIndex] > resultArr[j] {
                    minIndex = j
                }
            }
            resultArr.swapAt(i, minIndex)
        }
        return resultArr
    }
}
