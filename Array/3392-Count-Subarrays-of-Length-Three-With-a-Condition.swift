import Foundation

/* Solution 1: Brute Force*/
class Solution1 {
    func countSubarrays(_ nums: [Int]) -> Int {
        var subCount = 0
        var window = 3
        for i in 0...nums.count - 1 {
            if i < nums.count - 2 {
                
                if nums[i+1] == 2 * (nums[i] + nums[i+2]) {
                    subCount += 1
                }
            }
        }
        return subCount
    }
}

/* Solution 2*/
class Solution2 {
    func countSubarrays(_ nums: [Int]) -> Int {
        guard nums.count >= 3 else { return 0 }
        var count = 0
        
        for i in 0...(nums.count - 3) {
            let left = Int64(nums[i])
            let mid  = Int64(nums[i + 1])
            let right = Int64(nums[i + 2])
            
            if mid == 2 * (left + right) {
                count += 1
            }
        }
        return count
    }
}
