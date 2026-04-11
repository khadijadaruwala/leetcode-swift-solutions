
import Foundation
class Solution {
    func findOcurrences(_ text: String, _ first: String, _ second: String) -> [String] {
        if text.count == 0  {
            return []
        }
        var result = [String]()
        var dict = [String: Int]()
        let words = text.split(separator: " ")
        for i in 0..<words.count - 2 {
            
            if String(words[i]) == first && String(words[i + 1]) == second {
                result.append(String(words[i + 2]))
            }
        }
        return result
    }
}
