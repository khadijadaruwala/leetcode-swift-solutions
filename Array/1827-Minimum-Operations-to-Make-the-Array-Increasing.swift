/*Solution 1: Brute force Time Complexity - O(n + K) */
class Solution1 {
    func minOperations(_ nums: [Int]) -> Int {
        var numsDuplicate = nums
        if nums.count <= 1 {
            return 0
        }
        var operationCount = 0
        for i in 0...numsDuplicate.count - 2 {
            if numsDuplicate[i] >= numsDuplicate[i+1]{
                var count = 1 + (numsDuplicate[i] - numsDuplicate[i+1])
                operationCount = operationCount + count
                while (count > 0){
                    numsDuplicate[i+1] += 1
                    count -= 1
                }
            }
        }
        return operationCount
        
    }
}

/* Solution 2: Time Complexity O(n) */
class Solution2 {
    func minOperations(_ nums: [Int]) -> Int {
        if nums.count <= 1 {
            return 0
        }
        var ops = 0
        var prev = nums[0]
        
        for i in 1..<nums.count {
            var cur = nums[i]
            if prev >= cur {
                var count = (prev + 1) - cur
                ops = ops + count
                cur = prev + 1
            }
            prev = cur
        }
        return ops
        
    }
}
