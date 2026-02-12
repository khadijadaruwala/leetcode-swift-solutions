/* Time complexity: O(1) and space complexity: O(1)*/
class Solution {
    func haveConflict(_ event1: [String], _ event2: [String]) -> Bool {
        
        
        let s1 = toMinutes(event1[0]), e1 = toMinutes(event1[1])
        let s2 = toMinutes(event2[0]), e2 = toMinutes(event2[1])
        
        return max(s1, s2) <= min(e1, e2)
        
    }
    
    func toMinutes(_ t: String) -> Int {
        let parts = t.split(separator: ":")
        let h = Int(parts[0])!
        let m = Int(parts[1])!
        return h * 60 + m
    }
}
