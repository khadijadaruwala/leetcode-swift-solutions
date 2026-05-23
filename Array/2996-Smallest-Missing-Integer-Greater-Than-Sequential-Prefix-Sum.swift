/*Time complexity: O(n) and space complexity: O(n)*/
class Solution {
    func missingInteger(_ nums: [Int]) -> Int {
        var sum = nums[0]
        
        for i in 1..<nums.count {
            if nums[i] == nums[i - 1] + 1 {
                sum += nums[i]
            } else {
                break
            }
        }
        
        let setNums = Set(nums)
        while setNums.contains(sum) {
            sum += 1
        }
        
        return sum
    }
}
