/*Time    O(N × M)
 Space    O(N × M)*/
class Solution {
    func splitWordsBySeparator(_ words: [String], _ separator: Character) -> [String] {
        var result: [String] = []
        
        for word in words {
            for part in word.split(separator: separator) {
                result.append(String(part))
            }
        }
        
        return result
    }
}
