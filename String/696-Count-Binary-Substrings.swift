class Solution {
    func countBinarySubstrings(_ s: String) -> Int {
        var prev = 0
        var curr = 1
        var result = 0
        let chars = Array(s)
        
        for i in 1..<chars.count {
            
            if chars[i] == chars[i-1]{
                curr+=1
            } else {
                result += min(prev, curr)
                prev = curr
                curr = 1
            }
        }
        
        result += min (prev, curr)
        return result
    }
}
