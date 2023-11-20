//
//  main.swift
//  BinarySearch
//
//  Created by LongMa on 2023/11/20.
//

import Foundation

/**
 二分查找思路:
 类比：猜数字1~100，每次都猜最中间的数，下标mid=(left+right)/2；
    如果猜小了，下次就往[mid+1, right]猜(left = mid + 1)；
    如果猜大了，下次就往[left, mid-1]猜(right = mid - 1)；
    当猜中时，return 下标；
    猜数的结束条件是：left > right；
    当猜的数不再范围内时，, 返回 -1；
 */
func getIndexByBinarySearch(for item:Int, in sortedArray:[Int])->Int {
    var left = 0
    var right = sortedArray.count - 1
    
    while left <= right {
        let mid = (left + right)/2
        let guess = sortedArray[mid]
        if guess < item {
            left = mid + 1
        }else if guess > item {
            right = mid - 1
        }else {//==
            return mid
        }
    }
    
    return -1
}

/*
 log:
 -1
 0
 1
 2
 8
 9
 -1
 -1
 */

//-1
print(getIndexByBinarySearch(for: -99, in: Array(1...10)))

//0
print(getIndexByBinarySearch(for: 1, in: Array(1...10)))

//1
print(getIndexByBinarySearch(for: 2, in: Array(1...10)))

//2
print(getIndexByBinarySearch(for: 3, in: Array(1...10)))

//8
print(getIndexByBinarySearch(for: 9, in: Array(1...10)))

//9
print(getIndexByBinarySearch(for: 10, in: Array(1...10)))

//-1
print(getIndexByBinarySearch(for: 11, in: Array(1...10)))

//-1
print(getIndexByBinarySearch(for: 99, in: Array(1...10)))
