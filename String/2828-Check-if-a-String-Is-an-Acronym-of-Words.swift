
import Foundation
 /*Solution 1: Time complexity - O(n * k + n^2)*/
 class Solution {
     func isAcronym(_ words: [String], _ s: String) -> Bool {
         var combinedStr = ""

         for word in words{
             print(word)
             var firstChar = Array(word)[0]
             print(firstChar)
             combinedStr += String(firstChar)
         }
         print(combinedStr)
         return s == combinedStr
     }
 }

/*Solution 2: Time complexity - O(n) */
class Solution {
    func isAcronym(_ words: [String], _ s: String) -> Bool {
        if words.count != s.count {
            return false
        }
        
        for (i, word) in words.enumerated() {
            if word.first != s[s.index(s.startIndex, offsetBy: i)] {
                return false
            }
        }
        return true
    }
}
