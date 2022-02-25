
import Foundation
class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
        var count = 0
        var max = 0
        for num in nums {
            if num == 1 {
                count += 1
            } else if num == 0 {
                count = 0
            }
            if count > max {
                max = count
            }
        }
        return max
    }
}
