/* Time complexity : O(n log n) Space Complexity: O(n + m) or O(1) */
/* Solution 1 */
class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var child = 0
        var cookie = 0
        var g = g.sorted()
        var s = s.sorted()
        
        while child < g.count && cookie < s.count {
            if s[cookie] >= g[child]{
                child += 1
            }
            cookie += 1
        }
        return child
    }
}
/* Solution 2 */
class Solution2 {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var g = g, s = s
        g.sort()
        s.sort()
        
        var i = 0
        
        for cookie in s {
            if i < g.count && cookie >= g[i] {
                i += 1
            }
        }
        
        return i
    }
}
