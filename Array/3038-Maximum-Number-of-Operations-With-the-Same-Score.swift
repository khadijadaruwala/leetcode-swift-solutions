/*Solution: Time complexity - O(n) and Space complexity - O(1)*/
class Solution {
    func maxOperations(_ nums: [Int]) -> Int {
        var count = 0
        var target = nums[0] + nums[1]
        var i = 0
        
        while i < nums.count - 1 {
            if nums[i] + nums[i+1] == target {
                count += 1
            } else {
                break
            }
            
            i+=2
        }
        
        return count
    }
}
