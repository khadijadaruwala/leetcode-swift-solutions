class Solution {
    func maxPower(_ s: String) -> Int {
        var chars = Array(s)
        var maxCount = 1
        var curCount = 1
        
        for i in 1..<chars.count {
            if chars[i] == chars[i-1] {
                curCount += 1
            } else {
                curCount = 1
            }
            maxCount = max(curCount, maxCount)
        }
        
        return maxCount
    }
}
