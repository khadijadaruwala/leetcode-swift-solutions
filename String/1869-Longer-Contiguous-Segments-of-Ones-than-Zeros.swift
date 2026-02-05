import Foundation

/*Solution 1 - Brute Force Time complexity O(n) */
class Solution1 {
    func checkZeroOnes(_ s: String) -> Bool {
        var isLong = false
        var oneCounter = 0
        var zeroCounter = 0
        var maxOneCounter = 0
        var maxZeroCounter = 0
        
        for i in s {
            if i == "1" {
                oneCounter += 1
                zeroCounter = 0
            } else {
                zeroCounter += 1
                oneCounter = 0
            }
            
            if oneCounter > maxOneCounter {
                maxOneCounter = oneCounter
            }
            
            if zeroCounter > maxZeroCounter {
                maxZeroCounter = zeroCounter
            }
        }
        return maxOneCounter > maxZeroCounter
    }
}

/* Solution 2: More optimised and clean code, Time complexity - O(n)*/
class Solution2 {
    func checkZeroOnes(_ s: String) -> Bool {
        var current = 0
        var maxOnes = 0
        var maxZeros = 0
        var prev: Character? = nil
        
        for ch in s {
            if ch == prev {
                current += 1
            } else {
                current = 1
                prev = ch
            }
            
            if ch == "1" {
                maxOnes = max(maxOnes, current)
            } else { // ch == "0"
                maxZeros = max(maxZeros, current)
            }
        }
        
        return maxOnes > maxZeros
    }
}
