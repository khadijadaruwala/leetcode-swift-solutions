
import Foundation
class Solution {
     /* Solution 1 : Time: O(n) Space: O(n) */
     func isIsomorphic(_ s: String, _ t: String) -> Bool {
         if s.count != t.count {return false}
         var mapS = [Character: Character]()
         var mapT = [Character: Character]()
         var sArray = Array(s)
         var tArray = Array(t)
    
         for i in 0..<sArray.count {
             var c1 = sArray[i]
             var c2 = tArray[i]
    
             if let mapped = mapS[c1] {
                 if mapped != c2 {
                     return false
                 }
             } else {
                 mapS[c1] = c2
             }
    
             if let mapped = mapT[c2] {
                 if mapped != c1 {
                     return false
                 }
             } else {
                 mapT[c2] = c1
             }
         }
         return true
     }
    
    /* Solution 2 : Time: O(n) Space:O(256 * 2) = O(1) */
    
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let n = s.count
        if n != t.count { return false }
        
        var mapS = [Int](repeating: -1, count: 256)
        var mapT = [Int](repeating: -1, count: 256)
        
        let sArray = Array(s)
        let tArray = Array(t)
        
        for i in 0..<n {
            let c1 = Int(sArray[i].asciiValue!)
            let c2 = Int(tArray[i].asciiValue!)
            
            if mapS[c1] == -1 && mapT[c2] == -1 {
                // No mapping exists yet, assign
                mapS[c1] = c2
                mapT[c2] = c1
            } else if mapS[c1] != c2 || mapT[c2] != c1 {
                // Existing mapping does not match
                return false
            }
        }
        
        return true
    }
}
