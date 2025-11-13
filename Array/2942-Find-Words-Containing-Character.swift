import Foundation

class Solution {
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        
        var resultArray: [Int] = []
        var count = 0
        
        for index in 0...words.count - 1 {
            if words[index].contains(x){
                resultArray.append(index)
            }
        }
        
        return resultArray
    }
}
