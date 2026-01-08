
//Kadane’s Algorithm
/*Time complexity - O(n) and Space Complexity - O(1) */

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var currentSum = nums[0]
        var maxSum = nums[0]
        
        for i in 1..<nums.count {
            currentSum = max(nums[i], currentSum + nums[i])
            maxSum = max(maxSum, currentSum)
        }
        
        return maxSum
    }
}
