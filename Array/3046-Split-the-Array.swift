/* Time complexity: O(n) and Space complexity O(u) where u is the number of distinct value*/

class Solution {
    func isPossibleToSplit(_ nums: [Int]) -> Bool {
        var freq: [Int: Int] = [:]
        var n = nums.count
        if n%2 != 0 { return false}
        
        for i in nums {
            freq[i, default: 0] += 1
            if freq[i]! > 2 {return false}
        }
        return true
    }
}
