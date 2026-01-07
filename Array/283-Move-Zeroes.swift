/* Solution 1 - Time complexity : O(n^2) */
class Solution1 {
    func moveZeroes(_ nums: inout [Int]) {
        var count = 0
        var index = 0
        
        if nums.count > 1{
            while count < nums.count{
                if nums[index] == 0 {
                    nums.remove(at: index)
                    nums.append(0)
                } else {
                    index += 1
                }
                count += 1
            }
        }
    }
}

/* Solution 2 - Time complexity : O(n) */

class Solution2 {
    func moveZeroes(_ nums: inout [Int]) {
        var insertPos = 0
        
        // Move non-zero elements forward
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums[insertPos] = nums[i]
                insertPos += 1
            }
        }
        
        // Fill the rest with zeros
        while insertPos < nums.count {
            nums[insertPos] = 0
            insertPos += 1
        }
    }
}
