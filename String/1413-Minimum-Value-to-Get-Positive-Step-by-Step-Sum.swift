
class Solution {
    /*   Time complexity: O(n²) and space complexity: O(1)*/
    func minStartValue(_ nums: [Int]) -> Int {
        var startValue = 1
        var pointer = 0
        var sum  = startValue
        while pointer < nums.count {
            sum = sum + nums[pointer]
            if sum < 1 {
                startValue += 1
                pointer = 0
                sum = startValue
            } else {
                pointer += 1
            }
        }
        
        return startValue
    }
    
    /*Time complexity: O(n) and space complexity: O(1)*/
    
    func minStartValue(_ nums: [Int]) -> Int {
        var sum = 0
        var minSum = 0
        
        for num in nums {
            sum += num
            minSum = min(minSum, sum)
        }
        
        return 1 - minSum
    }
}
