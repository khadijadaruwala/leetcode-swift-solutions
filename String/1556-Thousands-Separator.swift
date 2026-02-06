import Foundation
/* Solution 1 - Time Complexity : O(n) Space complexity : O(n)*/
class Solution {
    func thousandSeparator(_ n: Int) -> String {
        
        let chars = Array(String(n))
        var result = ""
        var count = 0
        
        for i in stride(from: chars.count - 1, through: 0, by: -1) {
            result.append(chars[i])
            count += 1
            
            if count % 3 == 0 && i != 0 {
                result.append(".")
            }
        }
        
        return String(result.reversed())
    }
}
